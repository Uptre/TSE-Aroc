//
// Created by Administrator on 2021/5/27.
//

#ifndef AROC_ASTVISITOR_H
#define AROC_ASTVISITOR_H
#include <algorithm>
#include <map>
#include <memory>
#include <fstream>
#include <list>
#include "ASTNodes.h"
#include "libUtils/Utils.h"
namespace Aroc {
    using namespace std;
    using namespace Utils;
    void before(std::string arg = "");
    void visit(ASTNode* node);
    void after();
}

#endif //AROC_ASTVISITOR_H
