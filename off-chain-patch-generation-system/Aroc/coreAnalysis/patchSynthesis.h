//
// Created by Administrator on 2021/5/27.
//

#ifndef AROC_PATCHSYNTHESIS_H
#define AROC_PATCHSYNTHESIS_H
#include <iostream>
#include<string>
#include<stdio.h>
#include "../libUtils/Utils.h"
using namespace std;
using namespace Aroc;
namespace Aroc {
    typedef tuple<string, vector<int>, ASTNodePtr, string, map<string, vector<pcVDR>>> bugInfoForSye;
    string reeConditionExtractor(string pathCons, string textInsert_ree);
    void patchAri(ASTNodePtr &bug_node, string &textInsert_ari_final);
    void contractSyn(string &vulFunc,  map<string, vector<pcVDR>> &completePathCons, string &bugType, vector<ASTNodePtr> &tarBlockNodes, string &tarLineStr, ASTNodePtr &bug_node,
                     string &textInsert_ree, vector<ASTNodePtr> &stateVars,
                     map<string, set<string>> &repairRules,
                     set<VariableDeclarationNodePtr> &taintedStateVar);
    void synPatchContract(map<string, vector<bugInfoForSye>>& allInfoForCsyn, RootNodePtr& astRootPatch);
}
#endif //AROC_PATCHSYNTHESIS_H
