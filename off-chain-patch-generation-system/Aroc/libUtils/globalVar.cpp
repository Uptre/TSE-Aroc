//
// Created by Administrator on 2021/5/20.
//
#include "globalVar.h"
namespace Aroc{
    map<string, int> sourceMap;
    map<int, string> sourceMapNum2Str;
    map<int, vector<blockRelation>> cfgBlock;
    map<int, vector<ASTNodePtr>> blocksNode;
    map<int, string> blocks;
    map<int, int> line2Block;
    map<string, pcVDR> commonPrefix2Pathcons;

    void resetGvars(){
        sourceMap.clear();
        sourceMapNum2Str.clear();
        cfgBlock.clear();
        blocksNode.clear();
        blocks.clear();
        line2Block.clear();
        commonPrefix2Pathcons.clear();
    }
}