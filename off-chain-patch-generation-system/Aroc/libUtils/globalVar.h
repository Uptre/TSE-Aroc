//
// Created by Administrator on 2021/5/27.
//

#ifndef AROC_GLOBALVAR_H
#define AROC_GLOBALVAR_H
#include <iostream>
#include <map>
#include <vector>
#include "../coreAnalysis/ASTNodes.h"
using namespace std;
namespace Aroc {
    extern map<string, int> sourceMap;
    extern map<int, string>sourceMapNum2Str;
    extern map<int, string> blocks;
    extern map<int, int> line2Block;

    typedef tuple<string, map<string, string>> pcVDR;
    typedef tuple<string, string, map<string,string>> prefixPcVDR;
    typedef  tuple<int, int> blockRelation;
   typedef tuple<vector<int>, string, string> bugInfo;
    typedef tuple<vector<blockRelation>, int> pathInfo;
    typedef tuple<bugInfo, map<string, pathInfo> > completeBugInfo;
    typedef tuple<vector<int>, string> partBugInfo;

    typedef tuple<vector<int>, string> partBugInfo;
    extern map<int, vector<blockRelation>> cfgBlock;
    extern map<int, vector<ASTNodePtr>> blocksNode;


    extern map<string, pcVDR> commonPrefix2Pathcons;

    void resetGvars();
}
#endif //AROC_GLOBALVAR_H
