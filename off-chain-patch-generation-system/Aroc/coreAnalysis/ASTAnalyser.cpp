//
// Created by Administrator on 2021/5/27.
//

#include <iostream>
#include <string>
#include "ASTAnalyser.h"
#include "ASTVisitor.h"
using namespace std;
namespace Aroc{

    Indentation indentation_gbl;
    using namespace  Utils;
    ASTAnalyser::ASTAnalyser(stringstream& _ast_sstream, nlohmann::json& _jsonast, const bool& single_file, const string& file_name) {
        string new_line;
        while (getline(_ast_sstream, new_line)) {
            if (!new_line.empty()) {
                ast_lines.emplace_back(new_line);
            }
        }

        ast_json = _jsonast;
        ptr_ast_line = ast_lines.begin();
        num_functions_current_contract = 0;
        if (single_file) {
            while (Utils::substr_by_edge(*ptr_ast_line, "======= ", " =======") != file_name) {
                ++ptr_ast_line;
            }
        }
        do_not_produce_source = false;
    }


    RootNodePtr ASTAnalyser::analyse(RootNodePtr& astRootPatch, set<string>& targetFuncs, string& targetContract, map<string, vector<string>> parContractInfo) {
        stringstream import, pragma;
        string line;int i=0;
        string contract_name;
        ContractDefinitionNodePtr patchContract (new ContractDefinitionNode(targetContract));
        bool inTargeContract, reachNextFunc, inParContract;
        vector<FunctionDefinitionNodePtr> parentFuncs;
        vector<ContractDefinitionNodePtr> globalDecalContracts;
        while (ptr_ast_line != ast_lines.end()) {
            string keyword = Utils::retrieve_string_element(*ptr_ast_line, 0, " ");
            Utils::debug_info("Contract-level ast line handling: " + *ptr_ast_line);
            if (keyword == TokenPragmaDirective) {
                get_next_token(TokenSource);
                line = Utils::substr_by_edge(*ptr_ast_line, "Source: \"", "\"");
                remove_escapes(line);
                pragma << line;
            } else if (keyword == TokenImportDirective ) {
                get_next_token(TokenSource);
                line = Utils::substr_by_edge(*ptr_ast_line, "Source: \"", "\"");
                remove_escapes(line);
                import << line;
            }
            else if (keyword == TokenContractDefinition ) {
                if (inTargeContract){
                    reachNextFunc = true;
                }
                contract_name = Utils::retrieve_string_element(*ptr_ast_line, 1, " ");
                contract_name = Utils::substr_by_edge(contract_name, "\"", "\"");
              if(!parContractInfo.empty() && parContractInfo.find(contract_name) !=  parContractInfo.end()){
                  inParContract = true;
              }

              if(contract_name == targetContract){
                    inTargeContract = true;
                }

                ContractDefinitionNodePtr contract(new ContractDefinitionNode(contract_name));
                contracts.push_back(contract);
                current_contract = contract;
                num_functions_current_contract = 0;
                current_contract_name = contract_name;
                get_next_token(TokenSource);
                line = Utils::substr_by_edge(*ptr_ast_line, "Source: \"", "\"");
                if (line.find("library") != string::npos) {
                    current_contract->set_as_library();
                }
            } else if (keyword == TokenInheritanceSpecifier ) {
                get_next_token(TokenUserDefinedTypeName);
                line = Utils::substr_by_edge(*ptr_ast_line, TokenUserDefinedTypeName + " \"", "\"");
                current_contract->add_inherit_from(line);
            } else if (keyword == TokenUsingForDirective ) {
                get_next_token(TokenUserDefinedTypeName);
                string using_A = Utils::substr_by_edge(*ptr_ast_line, TokenUserDefinedTypeName + " \"", "\""), for_B = "*";
                if (get_next_token() == TokenUserDefinedTypeName) {
                    for_B = Utils::substr_by_edge(*ptr_ast_line, TokenUserDefinedTypeName + " \"", "\"");
                } else {
                    --ptr_ast_line; // next token is a new node, skipping increasing ast node iterator
                }
                auto using_for = static_pointer_cast<ASTNode>(make_shared<UsingForDirectiveNode>(using_A, for_B));
                current_contract->add_member(using_for);
            } else if (keyword == TokenStructDefinition ) {
                string struct_name = Utils::retrieve_string_element(*ptr_ast_line, 1, " ");
                struct_name = Utils::substr_by_edge(struct_name, "\"", "\"");
                StructDefinitionNodePtr struct_node = make_shared<StructDefinitionNode>(struct_name);
                int indentation = get_current_indentation();

                while (get_next_token() == TokenVariableDeclaration) {
                    if (get_current_indentation() <= indentation) break;
                    auto ast_var_decl = static_pointer_cast<ASTNode>(handle_variable_declaration());
                    struct_node->add_field(ast_var_decl);
                }
                auto ast_struct_node = static_pointer_cast<ASTNode>(struct_node);
                current_contract->add_member(ast_struct_node);
                patchContract->add_member(ast_struct_node);
                continue;

            } else if (keyword == TokenEnumDefinition ) {
                EnumDefinitionNodePtr enum_def = handle_enum_definition();
                current_contract->add_member(enum_def);
                patchContract->add_member(enum_def);
            }
            else if (keyword == TokenEnumValue ) {
                // not handled at top level
            } else if (keyword == TokenParameterList ) {
                // not handled at top level
            }
            else if (keyword == TokenFunctionDefinition ) {
                FunctionDefinitionNodePtr function_node = make_shared<FunctionDefinitionNode>();
                string function_name = Utils::retrieve_string_element(*ptr_ast_line, 1, " ");
                function_name = Utils::substr_by_edge(function_name, "\"", "\"");
                function_node->set_name(function_name);
                string qualifier = get_function_qualifier(current_contract_name, function_name, "visibility");
                string stateMutability = get_function_qualifier(current_contract_name, function_name, "stateMutability");
                if (stateMutability != "nonpayable") {
                    qualifier = qualifier + " " + stateMutability;
                }
                function_node->set_qualifier(qualifier);

                get_next_token(TokenParameterList);
                ParameterListNodePtr params = handle_parameter_list();
                function_node->set_params(params);

                get_next_token(TokenParameterList);
                ParameterListNodePtr returns = handle_parameter_list();

                string token = get_next_token();
                ModifierInvocationNodePtr modifier_invocation = nullptr;
                while (token == TokenModifierInvocation) {
                    modifier_invocation = handle_modifier_invocation();
                    token = get_next_token();
                }
                if(inParContract && !parContractInfo[contract_name].empty()){
                    for(auto func = parContractInfo[contract_name].begin(); func != parContractInfo[contract_name].end(); ){
                        if(function_name == *func){
                            parContractInfo[contract_name].erase(func);
                            ParameterListNodePtr returnsr = make_shared<ParameterListNode>();
                            char type_name[] = "bool";
                            string varName = "";
                            ElementaryTypeNameNodePtr elemType = make_shared<ElementaryTypeNameNode>(type_name);
                            VariableDeclarationNodePtr var_decl = make_shared<VariableDeclarationNode>(elemType, varName);
                            returnsr->add_parameter(var_decl);
                            function_node->set_returns(returnsr);
                            parentFuncs.push_back(function_node);
                            break;
                        } else {
                            func++;
                        }
                    }
                }

                if (inTargeContract && !targetFuncs.empty()){
                    for(auto func = targetFuncs.begin(); func != targetFuncs.end(); func++){
                        if(function_name == *func){
                            ParameterListNodePtr returnsr = make_shared<ParameterListNode>();
                            char type_name[] = "bool";
                            string varName = "";
                            ElementaryTypeNameNodePtr elemType = make_shared<ElementaryTypeNameNode>(type_name);
                            VariableDeclarationNodePtr var_decl = make_shared<VariableDeclarationNode>(elemType, varName);
                            returnsr->add_parameter(var_decl);
                            function_node->set_returns(returnsr);
                            patchContract->add_member(function_node);
                            targetFuncs.erase(func);
                            break;
                        }
                    }
                }

                BlockNodePtr function_body = nullptr;
                if (token == TokenBlock) {
                    function_body = handle_block();
                } else {
                    --ptr_ast_line;
                }

                function_node->set_function_body(function_body);
                current_contract->add_member(function_node);
                num_functions_current_contract++;
            }
            else if (keyword == TokenVariableDeclaration ) {

                int indentation = get_current_indentation();
                VariableDeclarationNodePtr var_decl = handle_variable_declaration();
                if(var_decl->get_type()->get_node_type() == NodeTypeUserDefinedTypeName){
                    auto tmpNode = dynamic_pointer_cast<UserDefinedTypeNameNode>(var_decl->get_type());
                }
                string token = get_next_token();
                if (indentation < get_current_indentation()) {
                    ASTNodePtr value = get_value_equivalent_node(token);
                    var_decl->set_initial_value(value);
                } else {
                    --ptr_ast_line;
                }
                current_contract->add_member(var_decl);
                if (inTargeContract && !reachNextFunc){
                    patchContract->add_member(var_decl);
                }
            }
            else if (keyword == TokenModifierDefinition ) {
                string modifier_name = Utils::retrieve_string_element(*ptr_ast_line, 1, " ");
                modifier_name = Utils::substr_by_edge(modifier_name, "\"", "\"");
                get_next_token(TokenParameterList);
                ParameterListNodePtr params = handle_parameter_list();
                if (params->num_parameters() == 0) params = nullptr;
                string token = get_next_token();
                ASTNodePtr body = get_statement_equivalent_node(token);
                ModifierDefinitionNodePtr modifier = make_shared<ModifierDefinitionNode>(modifier_name, params, body);
                current_contract->add_member(modifier);
            }
            else if (keyword == TokenModifierInvocation ) {
                // not handled at top level
            }
            else if (keyword == TokenEventDefinition ) {
                string event_name = Utils::retrieve_string_element(*ptr_ast_line, 1, " ");
                event_name = Utils::substr_by_edge(event_name, "\"", "\"");
                EventDefinitionNodePtr event_node = make_shared<EventDefinitionNode>(event_name);
                get_next_token(TokenParameterList);
                ParameterListNodePtr para = handle_parameter_list();
                event_node->set_argument_list(para);
                current_contract->add_member(event_node);
            }
            else if (keyword == TokenElementaryTypeName ) {
                // not handled at top level
            }
            else if (keyword == TokenUserDefinedTypeName ) {
                // not handled at top level
            }
            else if (keyword == TokenFunctionTypeName ) {
                // not handled at top level
            }
            else if (keyword == TokenMapping ) {
                // not handled at top level
            } else if (keyword == TokenArrayTypeName ) {
                // not handled at top level
            } else if (keyword == TokenInlineAssembly ) {
                // not handled at top level
            } else if (keyword == TokenBlock ) {
                BlockNodePtr block_node = handle_block();
                current_contract->add_member(block_node);
            } else if (keyword == TokenPlaceholderStatement ) {
                // not handled at top level
            } else if (keyword == TokenIfStatement ) {
                // not handled at top level
            } else if (keyword == TokenDoWhileStatement ) {
                // not handled at top level
            } else if (keyword == TokenWhileStatement ) {
                // not handled at top level
            } else if (keyword == TokenForStatement ) {
                // not handled at top level
            } else if (keyword == TokenContinue ) {
                // not handled at top level
            } else if (keyword == TokenBreak ) {
                // not handled at top level
            } else if (keyword == TokenReturn ) {
                // not handled at top level
            } else if (keyword == TokenThrow ) {
                // not handled at top level
            } else if (keyword == TokenEmitStatement ) {
                // not handled at top level
            } else if (keyword == TokenVariableDeclarationStatement ) {
                VariableDeclarationStatementNodePtr var_decl_stmt = handle_variable_declaration_statament();
                current_contract->add_member(var_decl_stmt);
                if (inTargeContract && !reachNextFunc) {
                    patchContract->add_member(var_decl_stmt);
                }
            } else if (keyword == TokenExpressionStatement ) {
                // not handled at top level
            } else if (keyword == TokenConditional ) {
                // not handled at top level
            } else if (keyword == TokenAssignment ) {
                // not handled at top level
            } else if (keyword == TokenTupleExpression ) {
                // not handled at top level
            } else if (keyword == TokenUnaryOperation ) {
                // not handled at top level
            } else if (keyword == TokenBinaryOperation ) {
                // not handled at top level
            } else if (keyword == TokenFunctionCall ) {
                // not handled at top level
            } else if (keyword == TokenNewExpression ) {
                // not handled at top level
            } else if (keyword == TokenMemberAccess ) {
                // not handled at top level
            } else if (keyword == TokenIndexAccess ) {
                // not handled at top level
            } else if (keyword == TokenIdentifier ) {
                // not handled at top level
            } else if (keyword == TokenElementaryTypeNameExpression ) {
                // not handled at top level
            } else if (keyword == TokenLiteral ) {
                // not handled at top level
            }
            if (ptr_ast_line == ast_lines.end()) break;
            ++ptr_ast_line;
        }

        Utils::debug_info("File processing finished");
        for(auto parFunc = parentFuncs.begin(); parFunc != parentFuncs.end(); parFunc++){
            patchContract->add_member(*parFunc);
        }

        RootNodePtr ast_root = make_shared<RootNode>();
        ast_root->set_import(import.str());
        ast_root->set_pragma(pragma.str());


        string pragmaRewritten = pragma.str();
        astRootPatch->set_import(import.str());
        astRootPatch->set_pragma(pragmaRewritten);
        astRootPatch->add_field(patchContract);
        if (!do_not_produce_source) {
            Indentation indentation;
            for (auto it_contract = contracts.begin(); it_contract != contracts.end(); ++it_contract) {
                ast_root->add_field(*it_contract);
            }
            Utils::debug_info("New code generated");
        }
        return ast_root;
    }

void ASTAnalyser::cfgNodeConstructor(RootNodePtr& ast_root, string& targetFunc){
    Aroc::Indentation indentation;
    before(targetFunc);
    ast_root->source_code(indentation);
    after();
}

void ASTAnalyser::get_next_token(const string& token) {
    if (ptr_ast_line == ast_lines.end()) return;
    ++ptr_ast_line;
    while (ptr_ast_line != ast_lines.end()) {
        string line = *ptr_ast_line;
        Utils::trim(line);
        if (Utils::retrieve_string_element(line, 0, " ") == token) {
            return;
        }
        ++ptr_ast_line;
    }
}

string ASTAnalyser::get_next_token() {
    if (ptr_ast_line == ast_lines.end()) return "";
    ++ptr_ast_line;
    while (ptr_ast_line != ast_lines.end()) {
        string line = *ptr_ast_line;
        Utils::trim(line);
        string keyword = Utils::retrieve_string_element(line, 0, " ");
        if (find(TokenList.begin(), TokenList.end(), keyword) != TokenList.end()) {
            return keyword;
        }
        ++ptr_ast_line;
    }
    return "";
}

void ASTAnalyser::remove_escapes(string& _str){
    str_replace_all(_str, "\\\"", "\"");
    str_replace_all(_str, "\\\'", "\'");
    str_replace_all(_str, "\\\\", "\\");
    str_replace_all(_str, "\\\a", "\"");
    str_replace_all(_str, "\\\b", "\"");
    str_replace_all(_str, "\\\f", "\"");
    str_replace_all(_str, "\\\n", "\"");
    str_replace_all(_str, "\\\r", "\"");
    str_replace_all(_str, "\\\t", "\"");
    str_replace_all(_str, "\\\v", "\"");
}

VariableDeclarationNodePtr ASTAnalyser::handle_variable_declaration(){
    // get name from the current token
    string variable_name = Utils::substr_by_edge(*ptr_ast_line, TokenVariableDeclaration + " \"", "\"");
    ASTNodePtr type;
    // then try to get type
    string next_token = get_next_token();
    type = get_type_name(next_token);
    return make_shared<VariableDeclarationNode>(type, variable_name);
}

ParameterListNodePtr ASTAnalyser::handle_parameter_list() {
    ParameterListNodePtr parameters = make_shared<ParameterListNode>();
    int indentation = get_current_indentation();
    string token = get_next_token();
    while (token == TokenVariableDeclaration && indentation < get_current_indentation()) {
        VariableDeclarationNodePtr var_decl = handle_variable_declaration();
        parameters->add_parameter(var_decl);
        token = get_next_token();
    }
    --ptr_ast_line; // if the token cannot enter while, it is outside the parameter list
    return parameters;
}

BlockNodePtr ASTAnalyser::handle_block() {
    int indentation = get_current_indentation();
    string token = get_next_token();
    BlockNodePtr block = make_shared<BlockNode>();
    while (token != "" && ptr_ast_line != ast_lines.end() && indentation < get_current_indentation()) {
        ASTNodePtr block_node_ptr = get_unknown(token);
        block->add_statement(block_node_ptr);
        token = get_next_token();
    }
    --ptr_ast_line;
    return block;
}

ExpressionStatementNodePtr ASTAnalyser::handle_expression_statament() {
    ExpressionStatementNodePtr statement = make_shared<ExpressionStatementNode>();
    string token = get_next_token();
    statement->set_expression(get_value_equivalent_node(token));
    return statement;
}

BinaryOperationNodePtr ASTAnalyser::handle_binary_operation() {
    string op = Utils::retrieve_string_element(*ptr_ast_line, 3, " ");
    get_next_token(TokenType);
    string type_str = Utils::retrieve_string_element(*ptr_ast_line, 1, " ");
    ASTNodePtr left_hand, right_hand;
    string token = get_next_token();
    left_hand = get_value_equivalent_node(token);

    token = get_next_token();
    right_hand = get_value_equivalent_node(token);

    BinaryOperationNodePtr binary_operation = make_shared<BinaryOperationNode>(op, left_hand, right_hand);
    binary_operation->set_return_type_str(type_str);
    return binary_operation;
}

UnaryOperationNodePtr ASTAnalyser::handle_unary_operation(){
    string operator_loc = Utils::retrieve_string_element(*ptr_ast_line, 1, " ");
    bool is_prefix = operator_loc == "(postfix)"? false : true;
    string op = Utils::retrieve_string_element(*ptr_ast_line, 2, " ");
    string token = get_next_token();
    ASTNodePtr operand = get_value_equivalent_node(token);
    UnaryOperationNodePtr unary_operation = make_shared<UnaryOperationNode>(op, operand, is_prefix);
    return unary_operation;
}

LiteralNodePtr ASTAnalyser::handle_literal() {
    get_next_token(TokenSource);
    string literal_source = Utils::substr_by_edge(*ptr_ast_line, "Source: \"", "\"");
    remove_escapes(literal_source);
    LiteralNodePtr literal = make_shared<LiteralNode>(literal_source);
    return literal;
}

TupleExpressionNodePtr ASTAnalyser::handle_tuple_expression() {
    TupleExpressionNodePtr tuple_expression = make_shared<TupleExpressionNode>();
    int indentation = get_current_indentation();
    string token = get_next_token();
    while (token != "" && indentation < get_current_indentation()) {
        ASTNodePtr node = get_value_equivalent_node(token);
        tuple_expression->add_member(node);
        token = get_next_token();
    }
    --ptr_ast_line;
    return tuple_expression;
}

VariableDeclarationStatementNodePtr ASTAnalyser::handle_variable_declaration_statament() {
    int indentation = get_current_indentation();
    get_next_token(TokenVariableDeclaration);
    VariableDeclarationNodePtr decl = handle_variable_declaration();
    string token = get_next_token();
    VariableDeclarationStatementNodePtr variable_decl_stmt;
    if (indentation < get_current_indentation()) {
        ASTNodePtr value = get_value_equivalent_node(token);
        variable_decl_stmt = make_shared<VariableDeclarationStatementNode>(decl, value);
    } else {
        ASTNodePtr value = nullptr;
        variable_decl_stmt = make_shared<VariableDeclarationStatementNode>(decl, value);
    }
    --ptr_ast_line;
    return variable_decl_stmt;
}

IdentifierNodePtr ASTAnalyser::handle_identifier() {
    get_next_token(TokenSource);
    string name = Utils::substr_by_edge(*ptr_ast_line, "Source: \"", "\"");
    return make_shared<IdentifierNode>(name);
}

ReturnNodePtr ASTAnalyser::handle_return() {
    int indentation = get_current_indentation();
    string token = get_next_token();
    ReturnNodePtr return_node = make_shared<ReturnNode>();
    while (token!= "" && indentation < get_current_indentation()) {
        ASTNodePtr sub_node = get_value_equivalent_node(token);
        return_node->set_operand(sub_node);
        token = get_next_token();
    }
    --ptr_ast_line;
    return return_node;
}

FunctionCallNodePtr ASTAnalyser::handle_function_call() {
    int indentation = get_current_indentation();
    string token = get_next_token();
    ASTNodePtr callee = get_value_equivalent_node(token);
    token = get_next_token();
    FunctionCallNodePtr function_call = make_shared<FunctionCallNode>(callee);
    while (token!= "" && indentation < get_current_indentation()) {
        function_call->add_argument(get_value_equivalent_node(token));
        token = get_next_token();
    }
    --ptr_ast_line;
    return function_call;
}

MemberAccessNodePtr ASTAnalyser::handle_member_access() {
    string member = Utils::retrieve_string_element(*ptr_ast_line, 3, " ");
    string token = get_next_token();
    ASTNodePtr identifier = get_value_equivalent_node(token);
    return make_shared<MemberAccessNode>(identifier, member);
}

EmitStatementNodePtr ASTAnalyser::handle_emit_statement() {
    string token = get_next_token();
    ASTNodePtr thing_to_emit = get_value_equivalent_node(token);
    EmitStatementNodePtr emit_stmt = make_shared<EmitStatementNode>();
    emit_stmt->set_event_call(thing_to_emit);
    return emit_stmt;
}

ElementaryTypeNameExpressionNodePtr ASTAnalyser::handle_elementary_type_name_expression() {
    get_next_token(TokenSource);
    string name = Utils::substr_by_edge(*ptr_ast_line, "Source: \"", "\"");
    ElementaryTypeNameExpressionNodePtr elementary_type_expr = make_shared<ElementaryTypeNameExpressionNode>(name);
    return elementary_type_expr;
}


ASTNodePtr ASTAnalyser::get_value_equivalent_node(string& token){
    ASTNodePtr node;
    if (token == TokenBinaryOperation) {
        node = handle_binary_operation();
    } else if (token == TokenLiteral) {
        node = handle_literal();
    } else if (token == TokenTupleExpression) {
        node = handle_tuple_expression();
    } else if (token == TokenUnaryOperation) {
        node = handle_unary_operation();
    } else if (token == TokenIdentifier) {
        node = handle_identifier();
    } else if (token == TokenFunctionCall) {
        node = handle_function_call();
    } else if (token == TokenMemberAccess) {
        node = handle_member_access();
    } else if (token == TokenIndexAccess) {
        node = handle_index_access();
    } else if (token == TokenElementaryTypeNameExpression) {
        node = handle_elementary_type_name_expression();
    } else if (token == TokenConditional) {
        node = handle_conditional();
    } else if (token == TokenAssignment) {
        node = handle_assignment();
    } else if (token == TokenNewExpression) {
        node = handle_new_expression();
    }
    return node;
}

ConditionalNodePtr ASTAnalyser::handle_conditional() {
    string token = get_next_token();
    ASTNodePtr condition = get_value_equivalent_node(token);
    token = get_next_token();
    ASTNodePtr yes = get_value_equivalent_node(token);
    token = get_next_token();
    ASTNodePtr no = get_value_equivalent_node(token);
    ConditionalNodePtr condiitonal = make_shared<ConditionalNode>(condition, yes, no);
    return condiitonal;
}

IndexAccessNodePtr ASTAnalyser::handle_index_access(){
    string token = get_next_token();
    ASTNodePtr identifier = get_value_equivalent_node(token);
    token = get_next_token();
    ASTNodePtr index = get_value_equivalent_node(token);
    IndexAccessNodePtr index_access = make_shared<IndexAccessNode>();
    index_access->set_identifier(identifier);
    index_access->set_index_value(index);
    return index_access;
}

AssignmentNodePtr ASTAnalyser::handle_assignment() {
    string op = Utils::retrieve_string_element(*ptr_ast_line, 3, " ");
    string token = get_next_token();
    ASTNodePtr left = get_value_equivalent_node(token);
    token = get_next_token();
    ASTNodePtr right = get_value_equivalent_node(token);
    AssignmentNodePtr assignment = make_shared<AssignmentNode>(op);
    assignment->set_left_hand_operand(left);
    assignment->set_right_hand_operand(right);
    return assignment;
}

IfStatementNodePtr ASTAnalyser::handle_if_statement() {
    int indentation = get_current_indentation();
    string token = get_next_token();
    ASTNodePtr condition;
    ASTNodePtr if_then = nullptr;
    ASTNodePtr if_else = nullptr;
    condition = get_value_equivalent_node(token);
    token = get_next_token();
    if_then = get_statement_equivalent_node(token);
    token = get_next_token();
    if (indentation < get_current_indentation()) {
        if_else = get_statement_equivalent_node(token);
    } else {
        --ptr_ast_line;
    }
    IfStatementNodePtr if_stmt = make_shared<IfStatementNode>(condition, if_then, if_else);
    return if_stmt;
}

ForStatementNodePtr ASTAnalyser::handle_for_statement() {
    int indentation = get_current_indentation();
    ASTNodePtr subnode[4];
    ForStatementNodePtr for_stmt;
    int tokens = 0;
    string token_type[4];
    string token = get_next_token();
    while (token != "" && indentation < get_current_indentation()) {
        if (find(StatementTokenList.begin(), StatementTokenList.end(), token) != StatementTokenList.end()) {
            subnode[tokens] = get_statement_equivalent_node(token);
        } else {
            subnode[tokens] = get_value_equivalent_node(token);
        }
        token_type[tokens] = token;
        tokens++;
        token = get_next_token();
    }
    --ptr_ast_line;
    if (tokens == 1) {
        for_stmt = make_shared<ForStatementNode>(nullptr, nullptr, nullptr, subnode[0]);
    } else if (tokens == 2) {
        if (token_type[0] == TokenExpressionStatement) {
            for_stmt = make_shared<ForStatementNode>(nullptr, nullptr, subnode[0], subnode[1]);
        } else if (find(StatementTokenList.begin(), StatementTokenList.end(), token_type[0]) != StatementTokenList.end()) {
            for_stmt = make_shared<ForStatementNode>(subnode[0], nullptr, nullptr, subnode[1]);
        } else {
            for_stmt = make_shared<ForStatementNode>(nullptr, subnode[0], nullptr, subnode[1]);
        }
    } else if (tokens == 3) {
        if (find(StatementTokenList.begin(), StatementTokenList.end(), token_type[0]) != StatementTokenList.end() && token_type[1] == TokenExpressionStatement) {
            for_stmt = make_shared<ForStatementNode>(subnode[0], nullptr, subnode[1], subnode[2]);
        } else if (find(StatementTokenList.begin(), StatementTokenList.end(), token_type[0]) != StatementTokenList.end() && find(ExpressionTokenList.begin(), ExpressionTokenList.end(), token_type[1]) != ExpressionTokenList.end()) {
            for_stmt = make_shared<ForStatementNode>(subnode[0], subnode[1], nullptr, subnode[2]);
        } else {
            for_stmt = make_shared<ForStatementNode>(nullptr, subnode[0], subnode[1], subnode[2]);
        }
    } else {
        for_stmt = make_shared<ForStatementNode>(subnode[0], subnode[1], subnode[2], subnode[3]);
    }

    return for_stmt;
}

DoWhileStatementNodePtr ASTAnalyser::handle_do_while_statament() {
    string token = get_next_token();
    ASTNodePtr condition = get_unknown(token);
    token = get_next_token();
    ASTNodePtr loop_body = get_unknown(token);
    DoWhileStatementNodePtr do_while = make_shared<DoWhileStatementNode>(condition, loop_body);
    return do_while;
}

WhileStatementNodePtr ASTAnalyser::handle_while_statement() {
    string token = get_next_token();
    ASTNodePtr condition = get_unknown(token);
    token = get_next_token();
    ASTNodePtr loop_body = get_unknown(token);
    WhileStatementNodePtr while_do = make_shared<WhileStatementNode>(condition, loop_body);
    return while_do;
}

ASTNodePtr ASTAnalyser::get_statement_equivalent_node(string& token) {
    if (token == TokenBlock) {
        return handle_block();
    } else if (token == TokenPlaceholderStatement) {
        return handle_placeholder();
    } else if (token == TokenIfStatement) {
        return handle_if_statement();
    } else if (token == TokenDoWhileStatement) {
        return handle_do_while_statament();
    } else if (token == TokenWhileStatement) {
        return handle_while_statement();
    } else if (token == TokenForStatement) {
        return handle_for_statement();
    } else if (token == TokenEmitStatement) {
        return handle_emit_statement();
    } else if (token == TokenVariableDeclarationStatement) {
        return handle_variable_declaration_statament();
    } else if (token == TokenExpressionStatement) {
        return handle_expression_statament();
    } else if (token == TokenBreak) {
        return make_shared<BreakNode>();
    } else if (token == TokenContinue) {
        return make_shared<ContinueNode>();
    } else if (token == TokenReturn){
        return handle_return();
    } else if (token == TokenThrow) {
        return make_shared<ThrowNode>();
    } else if (token == TokenInlineAssembly) {
        // In the ast file, inline assembly is stored as the source code
        get_next_token(TokenSource);
        string source_line = Utils::substr_by_edge(*ptr_ast_line, "Source: \"", "\"");
        remove_escapes(source_line);
        InlineAssemblyNodePtr inline_assembly = make_shared<InlineAssemblyNode>();
        inline_assembly->set_source(source_line);
        return inline_assembly;
    }
    return nullptr;
}

ASTNodePtr ASTAnalyser::get_unknown(string& token){
    if (find(StatementTokenList.begin(), StatementTokenList.end(), token) != StatementTokenList.end()) {
        return get_statement_equivalent_node(token);
    } else if (find(ExpressionTokenList.begin(), ExpressionTokenList.end(), token) != ExpressionTokenList.end()) {
        return get_value_equivalent_node(token);
    }
    return nullptr;
}

NewExpresionNodePtr ASTAnalyser::handle_new_expression() {
    string token = get_next_token();
    ASTNodePtr type_name = get_type_name(token);
    return make_shared<NewExpresionNode>(type_name);
}

EnumDefinitionNodePtr ASTAnalyser::handle_enum_definition() {
    string name = Utils::substr_by_edge(*ptr_ast_line, TokenEnumDefinition + " \"", "\"");
    EnumDefinitionNodePtr enum_definition = make_shared<EnumDefinitionNode>(name);
    int indentation = get_current_indentation();
    string token = get_next_token();
    while (token == TokenEnumValue && indentation < get_current_indentation()) {
        EnumValueNodePtr enum_member = handle_enum_value();
        enum_definition->add_member(enum_member);
        token = get_next_token();
    }
    --ptr_ast_line;
    return enum_definition;
}

EnumValueNodePtr ASTAnalyser::handle_enum_value() {
    string name = Utils::substr_by_edge(*ptr_ast_line, TokenEnumValue + " \"", "\"");
    return make_shared<EnumValueNode>(name);
}

PlaceHolderStatementPtr ASTAnalyser::handle_placeholder() {
    get_next_token(TokenSource);
    string placeholder = Utils::substr_by_edge(*ptr_ast_line, "Source: \"", "\"");
    return make_shared<PlaceHolderStatement>(placeholder);
}

ASTNodePtr ASTAnalyser::get_type_name(string& token) {
    ASTNodePtr type_name;
    string type_str;
    Utils::debug_info("token: " + token);

    if (token == TokenElementaryTypeName) {
        Utils::debug_info("elementary");
        ++ptr_ast_line;
        type_str = Utils::substr_by_edge(*ptr_ast_line, "Source: \"", "\"");
        Utils::debug_info("type:" + type_str);
        type_name = make_shared<ElementaryTypeNameNode>(type_str);
    } else if (token == TokenFunctionTypeName) {
        get_next_token(TokenParameterList);
        ParameterListNodePtr parameters = handle_parameter_list();
        get_next_token(TokenParameterList);
        ParameterListNodePtr returns = handle_parameter_list();
        type_name = make_shared<FunctionTypeNameNode>(parameters, returns);
    } else if (token == TokenArrayTypeName) {
        string array_base_type_token = get_next_token();
        ASTNodePtr base_type_node = get_type_name(array_base_type_token);
        ASTNodePtr index = nullptr;
        //try to find out the index of the array
        int indentation = get_current_indentation();
        string next_token = get_next_token();
        if (next_token != "" && indentation < get_current_indentation()) {
            index = get_value_equivalent_node(next_token);
        } else {
            --ptr_ast_line;
        }
        type_name = make_shared<ArrayTypeNameNode>(base_type_node, index);
    } else if (token == TokenUserDefinedTypeName) {
        type_str = Utils::substr_by_edge(*ptr_ast_line, TokenUserDefinedTypeName + " \"", "\"");
        type_name = make_shared<UserDefinedTypeNameNode>(type_str);
    } else if (token == TokenMapping) {
        string next_token = get_next_token();
        ASTNodePtr key_type = get_type_name(next_token);
        next_token = get_next_token();
        ASTNodePtr value_type = get_type_name(next_token);
        type_name = make_shared<MappingNode>(key_type, value_type);
    }
    return type_name;
}

ModifierInvocationNodePtr ASTAnalyser::handle_modifier_invocation() {
    string modifier_name = Utils::retrieve_string_element(*ptr_ast_line, 1, " ");
    modifier_name = Utils::substr_by_edge(modifier_name, "\"", "\"");
    ModifierInvocationNodePtr modifier_invocation = make_shared<ModifierInvocationNode>(modifier_name);
    int indentation = get_current_indentation();
    get_next_token(); // the token right after modifier invocation is an identifier token which is the name of the modifier
    string token = get_next_token();
    while (token != "" && indentation < get_current_indentation()) {
        ASTNodePtr subnode = get_value_equivalent_node(token);
        modifier_invocation->add_argument(subnode);
        token = get_next_token();
    }
    --ptr_ast_line;

    return modifier_invocation;
}

int ASTAnalyser::get_current_indentation() {
    if (ptr_ast_line == ast_lines.end()) return 0;
    return ptr_ast_line->find_first_not_of(' ');
}

string ASTAnalyser::get_function_qualifier(const string& _contract_name, const string& _function_name, const string& _type) {
    unsigned int num_functions = 0;
    auto root_node = ast_json.at("nodes");
    for (size_t i = 0; i < root_node.size(); ++i) {
        auto contract_node = root_node.at(i);
        if (contract_node.find("name") == contract_node.end()) {
            continue;
        }
        string this_contract_name = contract_node.at("name");
        if (this_contract_name == _contract_name) {
            for (size_t j = 0; j < contract_node.at("nodes").size(); ++j) {
                auto sub_node = contract_node.at("nodes").at(j);
                if (sub_node.at("nodeType") == TokenFunctionDefinition) {
                    if (sub_node.at("name") == _function_name && num_functions == num_functions_current_contract) {
                        return sub_node.at(_type);
                    }
                    num_functions++;
                }
            }
        }
    }
    return "";
}

bool ASTAnalyser::function_is_constructor(const string& _contract_name, const string& _function_name) {
    unsigned int num_functions = 0;
    auto root_node = ast_json.at("nodes");
    for (size_t i = 0; i < root_node.size(); ++i) {
        auto contract_node = root_node.at(i);
        if (contract_node.find("name") == contract_node.end()) {
            continue;
        }
        string this_contract_name = contract_node.at("name");
        if (this_contract_name == _contract_name) {
            for (size_t j = 0; j < contract_node.at("nodes").size(); ++j) {
                auto sub_node = contract_node.at("nodes").at(j);
                if (sub_node.at("nodeType") == TokenFunctionDefinition) {
                    if (sub_node.at("name") == _function_name && num_functions == num_functions_current_contract) {
                        return sub_node.at("isConstructor");
                    }
                    num_functions++;
                }
            }
        }
    }
    return false;
}

}

