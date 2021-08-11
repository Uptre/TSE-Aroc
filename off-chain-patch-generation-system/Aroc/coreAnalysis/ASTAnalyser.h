//
// Created by Administrator on 2021/5/27.
//
#ifndef AROC_ASTANALYSER_H
#define AROC_ASTANALYSER_H
#include <algorithm>
#include <fstream>
#include <iostream>
#include <list>
#include <map>
#include <sstream>
#include <string>

#include <nlohmann/json.hpp>
#include "libUtils/Utils.h"
#include "ASTNodes.h"
#include <set>
using namespace std;
namespace Aroc{

    class ASTAnalyser {
    public:
        ASTAnalyser(stringstream& _ast_sstream, nlohmann::json& _jsonast, const bool& single_file, const string& file_name);
        RootNodePtr analyse(RootNodePtr& astRootPatch, set<string>& targetFunc, string& targetContract, map<string, vector<string>> parContractInfo);
        void cfgNodeConstructor(RootNodePtr& ast_root, string& targetFunc);
    private:
        list<string> ast_lines;
        list<string>::iterator ptr_ast_line;
        nlohmann::json ast_json;
        vector<ContractDefinitionNodePtr> contracts;
        ContractDefinitionNodePtr current_contract;
        string current_contract_name;
        unsigned int num_functions_current_contract;
        set<string> visitor_arg;
        bool do_not_produce_source;

        void get_next_token(const string& token);
        string get_next_token();
        void remove_escapes(string& _str);
        VariableDeclarationNodePtr handle_variable_declaration();
        ParameterListNodePtr handle_parameter_list();
        BlockNodePtr handle_block();
        ExpressionStatementNodePtr handle_expression_statament();
        BinaryOperationNodePtr handle_binary_operation();
        UnaryOperationNodePtr handle_unary_operation();
        LiteralNodePtr handle_literal();
        TupleExpressionNodePtr handle_tuple_expression();
        VariableDeclarationStatementNodePtr handle_variable_declaration_statament();
        IdentifierNodePtr handle_identifier();
        ReturnNodePtr handle_return();
        FunctionCallNodePtr handle_function_call();
        MemberAccessNodePtr handle_member_access();
        EmitStatementNodePtr handle_emit_statement();
        IndexAccessNodePtr handle_index_access();
        ElementaryTypeNameExpressionNodePtr handle_elementary_type_name_expression();
        ConditionalNodePtr handle_conditional();
        AssignmentNodePtr handle_assignment();
        IfStatementNodePtr handle_if_statement();
        ForStatementNodePtr handle_for_statement();
        DoWhileStatementNodePtr handle_do_while_statament();
        WhileStatementNodePtr handle_while_statement();
        ASTNodePtr get_value_equivalent_node(string& token);
        ASTNodePtr get_statement_equivalent_node(string& token);
        ASTNodePtr get_unknown(string& token);
        NewExpresionNodePtr handle_new_expression();
        EnumDefinitionNodePtr handle_enum_definition();
        EnumValueNodePtr handle_enum_value();
        PlaceHolderStatementPtr handle_placeholder();
        ModifierInvocationNodePtr handle_modifier_invocation();
        ASTNodePtr get_type_name(string& token);
        int get_current_indentation();

        string get_function_qualifier(const string& contract_name, const string& _function_name, const string& _type);
        bool function_is_constructor(const string& _contract_name, const string& _function_name);
    };

}
#endif //AROC_ASTANALYSER_H
