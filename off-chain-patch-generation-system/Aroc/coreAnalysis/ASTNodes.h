//
// Created by Administrator on 2021/5/27.
//

#ifndef AROC_ASTNODES_H
#define AROC_ASTNODES_H

#include <algorithm>
#include <fstream>
#include <iostream>
#include <list>
#include <map>
#include <memory>
#include <sstream>
#include <string>
#include <vector>
//#include "../libUtils/Utils.h"
namespace Aroc{
    using namespace std;
    const string TokenSourceUnit = "SourceUnit";
    const string TokenPragmaDirective = "PragmaDirective";
    const string TokenImportDirective = "ImportDirective";
    const string TokenContractDefinition = "ContractDefinition";
    const string TokenInheritanceSpecifier = "InheritanceSpecifier";
    const string TokenUsingForDirective = "UsingForDirective";
    const string TokenStructDefinition = "StructDefinition";
    const string TokenEnumDefinition = "EnumDefinition";
    const string TokenEnumValue = "EnumValue";
    const string TokenParameterList = "ParameterList";
    const string TokenFunctionDefinition = "FunctionDefinition";
    const string TokenVariableDeclaration = "VariableDeclaration";
    const string TokenModifierDefinition = "ModifierDefinition";
    const string TokenModifierInvocation = "ModifierInvocation";
    const string TokenEventDefinition = "EventDefinition";
    const string TokenElementaryTypeName = "ElementaryTypeName";
    const string TokenUserDefinedTypeName = "UserDefinedTypeName";
    const string TokenFunctionTypeName = "FunctionTypeName";
    const string TokenMapping = "Mapping";
    const string TokenArrayTypeName = "ArrayTypeName";
    const string TokenInlineAssembly = "InlineAssembly";
    const string TokenBlock = "Block";
    const string TokenPlaceholderStatement = "PlaceholderStatement";
    const string TokenIfStatement = "IfStatement";
    const string TokenDoWhileStatement = "DoWhileStatement";
    const string TokenWhileStatement = "WhileStatement";
    const string TokenForStatement = "ForStatement";
    const string TokenContinue = "Continue";
    const string TokenBreak = "Break";
    const string TokenReturn = "Return";
    const string TokenThrow = "Throw";
    const string TokenEmitStatement = "EmitStatement";
    const string TokenVariableDeclarationStatement = "VariableDeclarationStatement";
    const string TokenExpressionStatement = "ExpressionStatement";
    const string TokenConditional = "Conditional";
    const string TokenAssignment = "Assignment";
    const string TokenTupleExpression = "TupleExpression";
    const string TokenUnaryOperation = "UnaryOperation";
    const string TokenBinaryOperation = "BinaryOperation";
    const string TokenFunctionCall = "FunctionCall";
    const string TokenNewExpression = "NewExpression";
    const string TokenMemberAccess = "MemberAccess";
    const string TokenIndexAccess = "IndexAccess";
    const string TokenIdentifier = "Identifier";
    const string TokenElementaryTypeNameExpression = "ElementaryTypeNameExpression";
    const string TokenLiteral = "Literal,";
    const string TokenLiterals = "Literals";
    const string TokenSource = "Source:";
    const string TokenType = "Type:";

    const list<string> TokenList{
            TokenSourceUnit,
            TokenPragmaDirective,
            TokenImportDirective,
            TokenContractDefinition,
            TokenInheritanceSpecifier,
            TokenUsingForDirective,
            TokenStructDefinition,
            TokenEnumDefinition,
            TokenEnumValue,
            TokenParameterList,
            TokenFunctionDefinition,
            TokenVariableDeclaration,
            TokenModifierDefinition,
            TokenModifierInvocation,
            TokenEventDefinition,
            TokenElementaryTypeName,
            TokenUserDefinedTypeName,
            TokenFunctionTypeName,
            TokenMapping,
            TokenArrayTypeName,
            TokenInlineAssembly,
            TokenBlock,
            TokenPlaceholderStatement,
            TokenIfStatement,
            TokenDoWhileStatement,
            TokenWhileStatement,
            TokenForStatement,
            TokenContinue,
            TokenBreak,
            TokenReturn,
            TokenThrow,
            TokenEmitStatement,
            TokenVariableDeclarationStatement,
            TokenExpressionStatement,
            TokenConditional,
            TokenAssignment,
            TokenTupleExpression,
            TokenUnaryOperation,
            TokenBinaryOperation,
            TokenFunctionCall,
            TokenNewExpression,
            TokenMemberAccess,
            TokenIndexAccess,
            TokenIdentifier,
            TokenElementaryTypeNameExpression,
            TokenLiteral,
            TokenLiterals,
            //TokenSource,
            //TokenType
    };

    const list<string> ExpressionTokenList{
            TokenConditional,
            TokenAssignment,
            TokenTupleExpression,
            TokenUnaryOperation,
            TokenBinaryOperation,
            TokenFunctionCall,
            TokenNewExpression,
            TokenMemberAccess,
            TokenIndexAccess,
            TokenIdentifier,
            TokenElementaryTypeNameExpression,
            TokenLiteral
    };

    const list<string> StatementTokenList{
            TokenBlock,
            TokenPlaceholderStatement,
            TokenIfStatement,
            TokenDoWhileStatement,
            TokenWhileStatement,
            TokenForStatement,
            TokenContinue,
            TokenBreak,
            TokenReturn,
            TokenThrow,
            TokenEmitStatement,
            TokenVariableDeclarationStatement,
            TokenExpressionStatement,
            TokenInlineAssembly
    };

    enum NodeType {
        NodeTypeSourceUnit,
        NodeTypeRoot,
        NodeTypePragmaDirective,
        NodeTypeImportDirective,
        NodeTypeUsingForDirective,
        NodeTypeVariableDeclaration,//5
        NodeTypeStructDefinition,
        NodeTypeParameterList,
        NodeTypeEventDefinition,
        NodeTypeBlockNode,
        NodeTypeFunctionDefinition,//10
        NodeTypeContractDefinition,
        NodeTypeFunctionCall,
        NodeTypeEnumDefinition,
        NodeTypeEnumValue,
        NodeTypeModifierDefinition,//15
        NodeTypeModifierInvocation,
        NodeTypeMapping,
        NodeTypeInlineAssembly,
        NodeTypePlaceholderStatement,
        NodeTypeIfStatement,   //20
        NodeTypeDoWhileStatement,
        NodeTypeWhileStatement,
        NodeTypeForStatement,
        NodeTypeContinue,
        NodeTypeBreak,//25
        NodeTypeReturn,
        NodeTypeThrow,
        NodeTypeEmitStatement,
        NodeTypeVariableDeclarationStatement,
        NodeTypeExpressionStatement,//30
        NodeTypeConditional,
        NodeTypeAssignment,
        NodeTypeTupleExpression,
        NodeTypeUnaryOperation,
        NodeTypeBinaryOperation,//35
        NodeTypeNewExpression,
        NodeTypeMemberAccess,
        NodeTypeIndexAccess,
        NodeTypeIdentifier,
        NodeTypeElementaryTypeNameExpression,//40
        NodeTypeLiteral,
        NodeTypeElementaryTypeName,
        NodeTypeUserDefinedTypeName,
        NodeTypeFunctionTypeName,
        NodeTypeArrayTypeName//45
    };

    typedef vector<string> Literals;

    class Indentation {
    public:
        Indentation() : tab_width(4), use_spaces(true), current_tab_width(0) {}
        explicit Indentation(const int& _tab_width) : tab_width(_tab_width), use_spaces(true), current_tab_width(0) {}
        Indentation(const int& _tab_width, const bool& _use_spaces) : tab_width(_tab_width), use_spaces(_use_spaces), current_tab_width(0) {}
        Indentation(const int& _tab_width, const bool& _use_spaces, const int& _current_tab_width) : tab_width(_tab_width), use_spaces(_use_spaces), current_tab_width(_current_tab_width) {}
        Indentation(const Indentation& _indentation);
        string str() const;
        Indentation& operator++();
        Indentation operator++(int);
        Indentation& operator--();
        Indentation operator--(int);
        Indentation& operator=(const Indentation& _indentation );
    private:
        int tab_width;
        bool use_spaces;
        int current_tab_width;
    };
    typedef shared_ptr<Indentation> IndentationPtr;

    ostream& operator<<(ostream& _os, const Indentation& _indentation);
    string operator+(const string& _str, const Indentation& _indentation);
    string operator+(const Indentation& _indentation, const string& _str);

    class ASTNode;
    typedef shared_ptr<ASTNode> ASTNodePtr;

    class ASTNode {
    public:
        explicit ASTNode(NodeType _node_type) : node_type(_node_type), text_before(""), text_after("") {}
        virtual string source_code(Indentation& _indentation) = 0;
        NodeType get_node_type() const;
        size_t size();
        void insert_text_before(const string& _text);
        void insert_text_after(const string& _text);
        string get_added_text_before() const;
        string get_added_text_after() const;
    protected:
        void append_sub_node(const ASTNodePtr& _node);
        void delete_sub_node(const unsigned int& x);
        void update_sub_node(const unsigned int& x, const ASTNodePtr _node);
        ASTNodePtr get_sub_node(const unsigned int& x) const;
        ASTNodePtr operator[] (const unsigned int& x);

        NodeType node_type;
        vector<ASTNodePtr> ast_nodes;
        string text_before;
        string text_after;
    };

    class RootNode : public ASTNode {
    public:
        RootNode() : ASTNode(NodeTypeRoot), import(""), pragma("") {}
        string source_code(Indentation& _indentation);
        void set_import(const string& _import);
        string get_import() const;
        void set_pragma(const string& _pragma);
        string get_pragma() const;

        void add_field(const ASTNodePtr& _node);
        void delete_field(const unsigned int& x);
        void update_field(const unsigned int& x, const ASTNodePtr& _node);
        ASTNodePtr get_field(const unsigned int& x);
        size_t num_fields();
        ASTNodePtr operator[] (const unsigned int& x);
    private:
        string import;
        string pragma;
    };
    typedef shared_ptr<RootNode> RootNodePtr;

    class PragmaDirectiveNode : public ASTNode {
    public:
        PragmaDirectiveNode() : ASTNode(NodeTypePragmaDirective) {}
        string source_code(Indentation& _indentation);
        void set_literals(const Literals& _literals);
        Literals get_literals();
    private:
        Literals literals;
    };
    typedef shared_ptr<PragmaDirectiveNode> PragmaDirectiveNodePtr;

    class ImportDirectiveNode : public ASTNode {
    public:
        ImportDirectiveNode() : ASTNode(NodeTypeImportDirective), original(""), file(""), symbol_aliases(""), unit_alias("") {}
        explicit ImportDirectiveNode(const string& _original) : ASTNode(NodeTypeImportDirective), original(_original) {}
        void set_file(const string& _file);
        void set_symbol_aliases(const string& _symbol_aliases);
        void set_unit_alias(const string& _unit_aliases);
        void set_original(const string& _original);
        string get_file();
        string get_symbol_aliases();
        string get_unit_aliases();
        string get_original();
        string source_code(Indentation& _indentation);
    private:
        string file;
        string symbol_aliases;
        string unit_alias;
        string original;
    };
    typedef shared_ptr<ImportDirectiveNode> ImportDirectiveNodePtr;

    class UsingForDirectiveNode : public ASTNode {
    public:
        UsingForDirectiveNode() : ASTNode(NodeTypeUsingForDirective), A(""), B("") {}
        UsingForDirectiveNode(string& _A, string& _B) : ASTNode(NodeTypeUsingForDirective), A(_A), B(_B) {}
        string source_code(Indentation& _indentation);
        void set_using(const string& _using);
        void set_for(const string& _for);
        string get_using();
        string get_for();
    private:
        string A;
        string B;
    };
    typedef shared_ptr<UsingForDirectiveNode> UsingForDirectiveNodePtr;

    class VariableDeclarationNode : public ASTNode {
    public:
        VariableDeclarationNode() : ASTNode(NodeTypeVariableDeclaration), type(nullptr), initial_value(nullptr) {}
        VariableDeclarationNode(const ASTNodePtr& _type, string& _variable_name) : ASTNode(NodeTypeVariableDeclaration), type(_type), variable_name(_variable_name), initial_value(nullptr) {}
        string source_code(Indentation& _indentation);
        void set_type(const ASTNodePtr& _type);
        void set_variable_name(const string& _variable_name);
        void set_initial_value(const ASTNodePtr& _initial_value);
        ASTNodePtr get_type();
        string get_variable_name();
        ASTNodePtr get_initial_value();
    private:
        ASTNodePtr type;
        string variable_name;
        ASTNodePtr initial_value;
    };
    typedef shared_ptr<VariableDeclarationNode> VariableDeclarationNodePtr;

    class VariableDeclarationStatementNode : public ASTNode {
    public:
        VariableDeclarationStatementNode() : ASTNode(NodeTypeVariableDeclarationStatement), decl(nullptr), value(nullptr) {}
        VariableDeclarationStatementNode(const VariableDeclarationNodePtr& _decl, const ASTNodePtr& _value) : ASTNode(NodeTypeVariableDeclarationStatement), decl(_decl), value(_value) {}
        string source_code(Indentation& _indentation);
        VariableDeclarationNodePtr get_decl() const;
        ASTNodePtr get_value() const;
        void set_decl(const VariableDeclarationNodePtr& _decl);
        void set_value(const ASTNodePtr& _value);
    private:
        VariableDeclarationNodePtr decl;
        ASTNodePtr value;
    };
    typedef shared_ptr<VariableDeclarationStatementNode> VariableDeclarationStatementNodePtr;

    class IdentifierNode : public ASTNode {
    public:
        explicit IdentifierNode(const string& _name) : ASTNode(NodeTypeIdentifier), name(_name) {}
        string source_code(Indentation& _indentation);
        string get_name() const;
        void set_name(const string& _name);
    private:
        string name;
    };
    typedef shared_ptr<IdentifierNode> IdentifierNodePtr;

    class StructDefinitionNode : public ASTNode {
    public:
        explicit StructDefinitionNode(const string& _name) : ASTNode(NodeTypeStructDefinition), name(_name) {};
        string source_code(Indentation& _indentation);
        string get_name() const;
        void set_name(const string& _name);
        void add_field(const ASTNodePtr& _node);
        void delete_field(const unsigned int& x);
        void update_field(const unsigned int& x, const ASTNodePtr& _node);
        ASTNodePtr get_field(const unsigned int& x);
        size_t num_fields();
        ASTNodePtr operator[] (const unsigned int& x);
    private:
        string name;
    };
    typedef shared_ptr<StructDefinitionNode> StructDefinitionNodePtr;

    class ParameterListNode : public ASTNode {
    public:
        ParameterListNode() : ASTNode(NodeTypeParameterList) {};
        string source_code(Indentation& _indentation);
        void add_parameter(const ASTNodePtr& _node);
        void delete_parameter(const unsigned int& x);
        void update_parameter(const unsigned int& x, const ASTNodePtr& _node);
        ASTNodePtr get_parameter(const unsigned int& x);
        size_t num_parameters();
        ASTNodePtr operator[] (const unsigned int& x);
    };
    typedef shared_ptr<ParameterListNode> ParameterListNodePtr;

    class EventDefinitionNode : public ASTNode {
    public:
        explicit EventDefinitionNode(const string& _name) : ASTNode(NodeTypeEventDefinition), name(_name) {}
        string source_code(Indentation& _indentation);
        string get_name() const;
        void set_name(const string& _name);
        void set_argument_list(const ParameterListNodePtr& _node);
        ParameterListNodePtr get_argument_list() const;
    private:
        string name;
        ParameterListNodePtr argument_list;
    };
    typedef shared_ptr<EventDefinitionNode> EventDefinitionNodePtr;

    class ExpressionStatementNode : public ASTNode {
    public:
        ExpressionStatementNode() : ASTNode(NodeTypeExpressionStatement) {}
        string source_code(Indentation& _indentation);
        ASTNodePtr get_expression() const;
        void set_expression(const ASTNodePtr& _expression);
    private:
        ASTNodePtr expression;
    };
    typedef shared_ptr<ExpressionStatementNode> ExpressionStatementNodePtr;

    class EmitStatementNode : public ASTNode {
    public:
        EmitStatementNode() : ASTNode(NodeTypeEmitStatement) {}
        string source_code(Indentation& _indentation);
        ASTNodePtr get_event_call() const;
        void set_event_call(const ASTNodePtr& _event_call);
    private:
        ASTNodePtr event_call;
    };
    typedef shared_ptr<EmitStatementNode> EmitStatementNodePtr;

    class IndexAccessNode : public ASTNode {
    public:
        IndexAccessNode() : ASTNode(NodeTypeIndexAccess) {}
        string source_code(Indentation& _indentation);
        ASTNodePtr get_identifier() const;
        ASTNodePtr get_index_value() const;
        void set_identifier(const ASTNodePtr& _identifier);
        void set_index_value(const ASTNodePtr& _index_value);
    private:
        ASTNodePtr identifier;
        ASTNodePtr index_value;
    };
    typedef shared_ptr<IndexAccessNode> IndexAccessNodePtr;

    class BinaryOperationNode : public ASTNode {
    public:
        BinaryOperationNode(string& _op, ASTNodePtr _left, ASTNodePtr _right) : ASTNode(NodeTypeBinaryOperation), op(_op), left_hand_operand(_left), right_hand_operand(_right) {}
        string source_code(Indentation& _indentation);
        string get_operator() const;
        void set_operator(const string& _operator);
        ASTNodePtr get_left_hand_operand() const;
        ASTNodePtr get_right_hand_operand() const;
        void set_left_hand_operand(const ASTNodePtr& _operand);
        void set_right_hand_operand(const ASTNodePtr& _operand);
        string get_return_type_str() const;
        void set_return_type_str(const string& _return_type_str);
    private:
        string op;
        string return_type_str;
        ASTNodePtr left_hand_operand;
        ASTNodePtr right_hand_operand;
    };
    typedef shared_ptr<BinaryOperationNode> BinaryOperationNodePtr;

    class UnaryOperationNode : public ASTNode {
    public:
        UnaryOperationNode(string& _op, ASTNodePtr _operand, bool _is_prefix) : ASTNode(NodeTypeUnaryOperation), op(_op), operand(_operand), is_prefix(_is_prefix) {}
        string source_code(Indentation& _indentation);
        string get_operator() const;
        void set_operator(const string& _operator);
        ASTNodePtr get_operand() const;
        void set_operand(const ASTNodePtr& _operand);
        bool operation_is_prefix() const;
        void operation_is_prefix(bool _boolean);
    private:
        string op;
        ASTNodePtr operand;
        bool is_prefix;
    };
    typedef shared_ptr<UnaryOperationNode> UnaryOperationNodePtr;

    class LiteralNode : public ASTNode {
    public:
        explicit LiteralNode(const string& _literal) : ASTNode(NodeTypeLiteral), literal(_literal) {}
        string source_code(Indentation& _indentation);
        void set_literal(const string& _literal);
        string get_literal() const;
    private:
        string literal;
    };
    typedef shared_ptr<LiteralNode> LiteralNodePtr;

    class TupleExpressionNode : public ASTNode {
    public:
        TupleExpressionNode() : ASTNode(NodeTypeTupleExpression) {}
        string source_code(Indentation& _indentation);
        void add_member(const ASTNodePtr& _node);
        void delete_member(const unsigned int& x);
        void update_member(const unsigned int& x, const ASTNodePtr& _node);
        ASTNodePtr get_member(const unsigned int& x);
        size_t num_members();
        ASTNodePtr operator[] (const unsigned int& x);
    private:
    };
    typedef shared_ptr<TupleExpressionNode> TupleExpressionNodePtr;

    class BlockNode : public ASTNode {
    public:
        BlockNode() : ASTNode(NodeTypeBlockNode) {}
        string source_code(Indentation& _indentation);
        void add_statement(const ASTNodePtr& _node);
        void delete_statement(const unsigned int& x);
        void update_statement(const unsigned int& x, const ASTNodePtr& _node);
        ASTNodePtr get_statement(const unsigned int& x);
        size_t num_statements();
        ASTNodePtr operator[] (const unsigned int& x);
    private:
    };
    typedef shared_ptr<BlockNode> BlockNodePtr;

    class ReturnNode : public ASTNode {
    public:
        ReturnNode() : ASTNode(NodeTypeReturn) {}
        explicit ReturnNode(ASTNodePtr _operand) : ASTNode(NodeTypeReturn), operand(_operand) {}
        string source_code(Indentation& _indentation);
        ASTNodePtr get_operand() const;
        void set_operand(const ASTNodePtr& _operand);
    private:
        ASTNodePtr operand;
    };
    typedef shared_ptr<ReturnNode> ReturnNodePtr;

    class ModifierDefinitionNode : public ASTNode {
    public:
        ModifierDefinitionNode() : ASTNode(NodeTypeModifierDefinition), params(nullptr) {}
        ModifierDefinitionNode(string& _name, ParameterListNodePtr _params, ASTNodePtr _body) : ASTNode(NodeTypeModifierDefinition), name(_name), params(_params), body(_body) {}
        string source_code(Indentation& _indentation);
        string get_name() const;
        ParameterListNodePtr get_params() const;
        ASTNodePtr get_body() const;
        void set_name(const string& _name);
        void set_params(const ParameterListNodePtr& _params);
        void set_body(const ASTNodePtr& _body);
    private:
        string name;
        ParameterListNodePtr params;
        ASTNodePtr body;
    };
    typedef shared_ptr<ModifierDefinitionNode> ModifierDefinitionNodePtr;

    class ModifierInvocationNode : public ASTNode {
    public:
        ModifierInvocationNode() : ASTNode(NodeTypeModifierInvocation) {}
        explicit ModifierInvocationNode(const string& _name) : ASTNode(NodeTypeModifierInvocation), name(_name) {}
        string source_code(Indentation& _indentation);
        void add_argument(const ASTNodePtr& _node);
        void delete_argument(const unsigned int& x);
        void update_argument(const unsigned int& x, const ASTNodePtr& _node);
        ASTNodePtr get_argument(const unsigned int& x);
        size_t num_arguments();
        ASTNodePtr operator[] (const unsigned int& x);
        string get_name() const;
        void set_name(const string& _name);
    private:
        string name;
    };
    typedef shared_ptr<ModifierInvocationNode> ModifierInvocationNodePtr;

    class FunctionDefinitionNode : public ASTNode {
    public:
        FunctionDefinitionNode() : ASTNode(NodeTypeFunctionDefinition), is_constructor(false) {};
        FunctionDefinitionNode(string& _name, string& _qualifier, ParameterListNodePtr _params, ParameterListNodePtr _returns, BlockNodePtr _function_body) : ASTNode(NodeTypeFunctionDefinition), name(_name), qualifier(_qualifier), params(_params), returns(_returns), function_body(_function_body), is_constructor(false) {}
        string source_code(Indentation& _indentation);
        void add_modifier_invocation(const ModifierInvocationNodePtr& _node);
        void delete_modifier_invocation(const unsigned int& x);
        void update_modifier_invocation(const unsigned int& x, const ModifierInvocationNodePtr& _node);
        ModifierInvocationNodePtr get_modifier_invocation(const unsigned int& x);
        size_t num_modifier_invocations();
        void set_name(const string& _name);
        void set_qualifier(const string& _qualifier);
        void set_params(const ParameterListNodePtr& _params);
        void set_returns(const ParameterListNodePtr& _returns);
        void set_function_body(const BlockNodePtr& _function_body);
        void set_is_constructor(const bool& _is_constructor);
        string get_name() const;
        string get_qualifier() const;
        ParameterListNodePtr get_params() const;
        ParameterListNodePtr get_returns() const;
        BlockNodePtr get_function_body() const;
        bool function_is_constructor() const;
    private:
        string name;
        string qualifier;
        ParameterListNodePtr params;
        ParameterListNodePtr returns;
        vector<ModifierInvocationNodePtr> modifier_invocation;
        BlockNodePtr function_body;
        bool is_constructor;
    };
    typedef shared_ptr<FunctionDefinitionNode> FunctionDefinitionNodePtr;

    class FunctionCallNode : public ASTNode {
    public:
        explicit FunctionCallNode(ASTNodePtr _callee) : ASTNode(NodeTypeFunctionCall), callee(_callee) {}
        string source_code(Indentation& _indentation);
        void add_argument(const ASTNodePtr& _node);
        void delete_argument(const unsigned int& x);
        void update_argument(const unsigned int& x, const ASTNodePtr& _node);
        ASTNodePtr get_argument(const unsigned int& x);
        size_t num_arguments();
        void set_callee(const ASTNodePtr& _callee);
        ASTNodePtr get_callee() const;
    private:
        ASTNodePtr callee;
        // arguments is stored in subnodes
    };
    typedef shared_ptr<FunctionCallNode> FunctionCallNodePtr;

    class MemberAccessNode : public ASTNode {
    public:
        MemberAccessNode(ASTNodePtr _identifier, string& _member) : ASTNode(NodeTypeMemberAccess), identifier(_identifier), member(_member) {}
        string source_code(Indentation& _indentation);
        void set_identifier(const ASTNodePtr& _identifier);
        ASTNodePtr get_identifier() const;
        void set_member(const string& _member);
        string get_member() const;
    private:
        ASTNodePtr identifier;
        string member;
    };
    typedef shared_ptr<MemberAccessNode> MemberAccessNodePtr;

    class ElementaryTypeNameExpressionNode : public ASTNode{
    public:
        explicit ElementaryTypeNameExpressionNode(string& _name) : ASTNode(NodeTypeElementaryTypeNameExpression), name(_name) {}
        string source_code(Indentation& _indentation);
        string get_name() const;
        void set_name(const string& _name);
    private:
        string name;
    };
    typedef shared_ptr<ElementaryTypeNameExpressionNode> ElementaryTypeNameExpressionNodePtr;

    class ContractDefinitionNode : public ASTNode {
    public:
        explicit ContractDefinitionNode(string& _name) : ASTNode(NodeTypeContractDefinition), name(_name), inherit_from{}, is_library(false) {}
        string source_code(Indentation& _indentation);
        void add_inherit_from(const string& _inherit_from);
        void delete_inherit_from(const unsigned int& x);
        void update_inherit_from(const unsigned int& x, const string& _inherit_from);
        string get_inherit_from(const unsigned int& x);
        size_t num_inherit_from() const;
        void set_as_library();
        void set_as_non_library();
        bool contract_is_library() const;
        void set_name(const string& _name);
        string get_name() const;
        void add_member(const ASTNodePtr& _node);
        void delete_member(const unsigned int& x);
        void update_member(const unsigned int& x, const ASTNodePtr& _node);
        ASTNodePtr get_member(const unsigned int& x);
        size_t num_members();
        ASTNodePtr operator[] (const unsigned int& x);
    private:
        string name;
        vector<string> inherit_from;
        bool is_library;
    };
    typedef shared_ptr<ContractDefinitionNode> ContractDefinitionNodePtr;

    class IfStatementNode : public ASTNode {
    public:
        IfStatementNode(ASTNodePtr _condition, ASTNodePtr _if_then, ASTNodePtr _if_else) : ASTNode(NodeTypeIfStatement), condition(_condition), if_then(_if_then), if_else(_if_else) {}
        string source_code(Indentation& _indentation);
        void set_condition(const ASTNodePtr& _condition);
        ASTNodePtr get_condition() const;
        void set_then(const ASTNodePtr& _then);
        ASTNodePtr get_then() const;
        void set_else(const ASTNodePtr& _else);
        ASTNodePtr get_else() const;
    private:
        ASTNodePtr condition;
        ASTNodePtr if_then;
        ASTNodePtr if_else;
    };
    typedef shared_ptr<IfStatementNode> IfStatementNodePtr;

    class DoWhileStatementNode : public ASTNode {
    public:
        DoWhileStatementNode(ASTNodePtr _condition, ASTNodePtr _loop_body) : ASTNode(NodeTypeDoWhileStatement), condition(_condition), loop_body(_loop_body) {}
        string source_code(Indentation& _indentation);
        void set_condition(const ASTNodePtr& _condition);
        ASTNodePtr get_condition() const;
        void set_loop_body(const ASTNodePtr& _loop_body);
        ASTNodePtr get_loop_body() const;
    private:
        ASTNodePtr condition;
        ASTNodePtr loop_body;
    };
    typedef shared_ptr<DoWhileStatementNode> DoWhileStatementNodePtr;


    class WhileStatementNode : public ASTNode {
    public:
        WhileStatementNode(ASTNodePtr _condition, ASTNodePtr _loop_body) : ASTNode(NodeTypeWhileStatement), condition(_condition), loop_body(_loop_body) {}
        string source_code(Indentation& _indentation);
        void set_condition(const ASTNodePtr& _condition);
        ASTNodePtr get_condition() const;
        void set_loop_body(const ASTNodePtr& _loop_body);
        ASTNodePtr get_loop_body() const;
    private:
        ASTNodePtr condition;
        ASTNodePtr loop_body;
    };
    typedef shared_ptr<WhileStatementNode> WhileStatementNodePtr;


    class ForStatementNode : public ASTNode {
    public:
        ForStatementNode(ASTNodePtr _init, ASTNodePtr _condition, ASTNodePtr _increment, ASTNodePtr _body) : ASTNode(NodeTypeForStatement), init(_init), condition(_condition), increment(_increment), body(_body) {}
        string source_code(Indentation& _indentation);
        ASTNodePtr get_init() const;
        ASTNodePtr get_condition() const;
        ASTNodePtr get_increment() const;
        ASTNodePtr get_body() const;
        void set_init(const ASTNodePtr& _init);
        void set_condition(const ASTNodePtr& _condition);
        void set_increment(const ASTNodePtr& _increment);
        void set_body(const ASTNodePtr& _body);
    private:
        ASTNodePtr init;
        ASTNodePtr condition;
        ASTNodePtr increment;
        ASTNodePtr body;
    };
    typedef shared_ptr<ForStatementNode> ForStatementNodePtr;

    class ConditionalNode : public ASTNode {
    public:
        ConditionalNode(ASTNodePtr _condition, ASTNodePtr _yes, ASTNodePtr _no) : ASTNode(NodeTypeConditional),  condition(_condition), yes(_yes), no(_no) {}
        string source_code(Indentation& _indentation);
        ASTNodePtr get_condition() const;
        ASTNodePtr get_yes() const;
        ASTNodePtr get_no() const;
        void set_condition(const ASTNodePtr& _condition);
        void set_yes(const ASTNodePtr& _yes);
        void set_no(const ASTNodePtr& _no);
    private:
        ASTNodePtr condition;
        ASTNodePtr yes;
        ASTNodePtr no;
    };
    typedef shared_ptr<ConditionalNode> ConditionalNodePtr;

    class AssignmentNode : public ASTNode {
    public:
        AssignmentNode() : ASTNode(NodeTypeAssignment) {}
        explicit AssignmentNode(const string& _op) : ASTNode(NodeTypeAssignment), op(_op) {}
        string source_code(Indentation& _indentation);
        string get_operator() const;
        void set_operator(const string& _operator);
        ASTNodePtr get_left_hand_operand() const;
        ASTNodePtr get_right_hand_operand() const;
        void set_left_hand_operand(const ASTNodePtr& _operand);
        void set_right_hand_operand(const ASTNodePtr& _operand);
    private:
        string op;
        ASTNodePtr left_hand_operand;
        ASTNodePtr right_hand_operand;
    };
    typedef shared_ptr<AssignmentNode> AssignmentNodePtr;

    class BreakNode : public ASTNode {
    public:
        BreakNode() : ASTNode(NodeTypeBreak) {};
        string source_code(Indentation& _indentation);
    };
    typedef shared_ptr<BreakNode> BreakNodePtr;

    class ContinueNode : public ASTNode {
    public:
        ContinueNode() : ASTNode(NodeTypeContinue) {};
        string source_code(Indentation& _indentation);
    };
    typedef shared_ptr<ContinueNode> ContinueNodePtr;

    class NewExpresionNode : public ASTNode {
    public:
        explicit NewExpresionNode(ASTNodePtr _type_name) : ASTNode(NodeTypeNewExpression), type_name(_type_name) {}
        string source_code(Indentation& _indentation);
        void set_type_name(const ASTNodePtr& _type_name);
        ASTNodePtr get_type_name() const;
    private:
        ASTNodePtr type_name;
    };
    typedef shared_ptr<NewExpresionNode> NewExpresionNodePtr;

    class EnumDefinitionNode : public ASTNode {
    public:
        explicit EnumDefinitionNode(const string& _name) : ASTNode(NodeTypeEnumDefinition), name(_name) {}
        string source_code(Indentation& _indentation);
        void add_member(const ASTNodePtr& _node);
        void delete_member(const unsigned int& x);
        void update_member(const unsigned int& x, const ASTNodePtr& _node);
        ASTNodePtr get_member(const unsigned int& x);
        size_t num_members();
        void set_name(const string& _name);
        string get_name() const;
    private:
        string name;
    };
    typedef shared_ptr<EnumDefinitionNode> EnumDefinitionNodePtr;

    class EnumValueNode : public ASTNode {
    public:
        explicit EnumValueNode(const string& _name) : ASTNode(NodeTypeEnumValue), name(_name) {}
        string source_code(Indentation& _indentation);
        string get_name() const;
        void set_name(const string& _name);
    private:
        string name;
    };
    typedef shared_ptr<EnumValueNode> EnumValueNodePtr;

    class ThrowNode : public ASTNode {
    public:
        ThrowNode() : ASTNode(NodeTypeThrow) {};
        string source_code(Indentation& _indentation);
    };
    typedef shared_ptr<ThrowNode> ThrowNodePtr;

    class PlaceHolderStatement : public ASTNode {
    public:
        explicit PlaceHolderStatement(const string& _place_holder) : ASTNode(NodeTypePlaceholderStatement), placeholder(_place_holder) {};
        string source_code(Indentation& _indentation);
        string get_placeholder() const;
        void set_placeholder(const string& _placeholder);
    private:
        string placeholder;
    };
    typedef shared_ptr<PlaceHolderStatement> PlaceHolderStatementPtr;

    class MappingNode : public ASTNode {
    public:
        MappingNode(ASTNodePtr _key_type, ASTNodePtr _value_type) : ASTNode(NodeTypeMapping), key_type(_key_type), value_type(_value_type) {}
        string source_code(Indentation& _indentation);
        ASTNodePtr get_key_type() const;
        ASTNodePtr get_value_type() const;
        void set_key_type(const ASTNodePtr& _key_type);
        void set_value_type(const ASTNodePtr& _value_type);
    private:
        ASTNodePtr key_type;
        ASTNodePtr value_type;
    };
    typedef shared_ptr<MappingNode> MappingNodePtr;

    class ElementaryTypeNameNode : public ASTNode {
    public:
        explicit ElementaryTypeNameNode(const string& _type_name) : ASTNode(NodeTypeElementaryTypeName), type_name(_type_name) {}
        string source_code(Indentation& _indentation);
        void set_type_name(const string& _type_name);
        string get_type_name() const;
    private:
        string type_name;
    };
    typedef shared_ptr<ElementaryTypeNameNode> ElementaryTypeNameNodePtr;

    class UserDefinedTypeNameNode : public ASTNode {
    public:
        explicit UserDefinedTypeNameNode(const string& _type_name) : ASTNode(NodeTypeUserDefinedTypeName), type_name(_type_name) {}
        string source_code(Indentation& _indentation);
        void set_type_name(const string& _type_name);
        string get_type_name() const;
    private:
        string type_name;
    };
    typedef shared_ptr<UserDefinedTypeNameNode> UserDefinedTypeNameNodePtr;

    class FunctionTypeNameNode : public ASTNode {
    public:
        FunctionTypeNameNode(ASTNodePtr _params, ASTNodePtr _returns) : ASTNode(NodeTypeFunctionTypeName), params(_params), returns(_returns) {}
        string source_code(Indentation& _indentation);
        ASTNodePtr get_params() const;
        ASTNodePtr get_returns() const;
        void set_params(const ASTNodePtr& _params);
        void set_returns(const ASTNodePtr& _returns);
    private:
        ASTNodePtr params;
        ASTNodePtr returns;
    };
    typedef shared_ptr<FunctionTypeNameNode> FunctionTypeNameNodePtr;

    class ArrayTypeNameNode : public ASTNode {
    public:
        ArrayTypeNameNode(ASTNodePtr _base_type, ASTNodePtr _size) : ASTNode(NodeTypeArrayTypeName), base_type(_base_type), size(_size) {}
        string source_code(Indentation& _indentation);
        ASTNodePtr get_base_type() const;
        ASTNodePtr get_size() const;
        void set_base_type(const ASTNodePtr& _base_type);
        void set_size(const ASTNodePtr& _size);
    private:
        ASTNodePtr base_type;
        ASTNodePtr size;
    };
    typedef shared_ptr<ArrayTypeNameNode> ArrayTypeNameNodePtr;

    class InlineAssemblyNode : public ASTNode {
    public:
        InlineAssemblyNode() : ASTNode(NodeTypeInlineAssembly) {};
        string source_code(Indentation& _indentation);
        void set_source(string& _source);
        string get_source();
    private:
        string source;
    };
    typedef shared_ptr<InlineAssemblyNode> InlineAssemblyNodePtr;

}

#endif