//
// Created by Administrator on 2021/5/27.
//
#ifndef AROC_PATHCONSEXTRACTOR_H
#define AROC_PATHCONSEXTRACTOR_H
#include "ASTAnalyser.h"
namespace Aroc {
    typedef tuple<string, vector<int>, ASTNodePtr, string, map<string, vector<pcVDR>>> bugInfoForSye;
    using namespace std;
    using namespace Utils;


    string handVarDecl(VariableDeclarationNodePtr node, map<string, string> &vdg);

    string handBinop(ASTNodePtr BinNode, map<string, string> &vdg);

    string handUnary(ASTNodePtr node, map<string, string> &vdg);

    string handleAssign(AssignmentNodePtr assignNode, map<string, string> &vdg);

    void handleCondition(BinaryOperationNodePtr condi_node, string &tmpPathCons, map<string, string> &vdg);

    void handleBlock(BlockNodePtr blockNode, string &tmpPathCons, map<string, string> &vdg);


    void varDeclSt(VariableDeclarationStatementNodePtr varDecalSTNode, map<string, string> &vdg);

    void exprSt(ExpressionStatementNodePtr esn, string &tmpPathCons, map<string, string> &vdg);

    void ifSt(IfStatementNodePtr ifNode, string &tmpPathCons, map<string, string> &vdg);


    void getAllPaths(vector<int> tls, map<string, pathInfo> &cfgPaths);

    string digOutReeStateAssign();

    void getConstraints( vector<int> &tlsInformation, string &bugTypeInformation, map<string, pathInfo> &pathInformation,
                        vector<string> &commonPrefixRecord, map<string, vector<pcVDR>> &completePathCons,
                        ASTNodePtr &bug_node, string &textInsert_ree);

    void organizeInfo(vector<bugInfo>& bugInfos, ASTAnalyser& ast_analyser, RootNodePtr& origin_root_node, map<string, vector<bugInfoForSye>>& allInfoForCsyn);
    }
    #endif //AROC_PATHCONSEXTRACTOR_H
