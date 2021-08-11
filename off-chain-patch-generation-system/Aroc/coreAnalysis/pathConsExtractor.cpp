//
// Created by Administrator on 2021/5/27.
//
#include "pathConsExtractor.h"
namespace Aroc {
    string handVarDecl(VariableDeclarationNodePtr node, map<string, string> &vdg) {
        string rightVar_name = node->get_variable_name();
        if (vdg.find(rightVar_name) != vdg.end()) {
            rightVar_name = vdg[rightVar_name];
        }
        return rightVar_name;
    }

    string handUnary(ASTNodePtr node, map<string, string> &vdg) {
        Indentation indentation;
        UnaryOperationNodePtr uncondi = dynamic_pointer_cast<UnaryOperationNode>(node);
        string op = uncondi->get_operator();
        string condition;
        auto condi = uncondi->get_operand();
        if (condi->get_node_type() == NodeTypeTupleExpression) {
            TupleExpressionNodePtr tupleNode = dynamic_pointer_cast<TupleExpressionNode>(condi);
            auto expr = tupleNode->get_member(0);
            if (expr->get_node_type() == NodeTypeBinaryOperation) {
                condition = handBinop(expr, vdg);
            }
        }else {
            condition = condi->source_code(indentation);
            if (vdg.size() != 0) {
                if (vdg.find(condition) != vdg.end()) {
                    condition = vdg[condition];
                }
            }
        }
        string right_var = "  " + op + "( " + condition + " )  ";
        return right_var;
    }

    string handBinop(ASTNodePtr node, map<string, string> &vdg) {
        Indentation indentation;
        BinaryOperationNodePtr binNode = dynamic_pointer_cast<BinaryOperationNode>(node);
        ASTNodePtr LHD, RHD;
        string rightEx_re = "", op = "";
        do {
            if (RHD != NULL) {
                binNode = dynamic_pointer_cast<BinaryOperationNode>(RHD);
            }
            LHD = binNode->get_left_hand_operand();
            string var_LHD = LHD->source_code(indentation);
            if (vdg.size() != 0) {
                if (vdg.find(var_LHD) != vdg.end()) {
                    var_LHD = vdg[var_LHD];
                }
            }
            op = binNode->get_operator();
            rightEx_re += var_LHD + " " + op + " ";
            RHD = binNode->get_right_hand_operand();
        } while (RHD->get_node_type() == NodeTypeBinaryOperation &&  containLetter(RHD->source_code(indentation)));//仅对包含变量的表达式进行判断
        string varR = RHD->source_code(indentation);
        if (!vdg.empty()) {
            if (vdg.find(varR) != vdg.end()) {
                varR = vdg[varR];
            }
        }
        rightEx_re = rightEx_re + " " + varR;
        return rightEx_re;
    }

    string handleAssign(AssignmentNodePtr assignNode, map<string, string> &vdg) {
        Indentation indentation;
        string binoperator, rightEx_re;
        string globalOp = assignNode->get_operator();
        if (globalOp.length() == 2) {
            binoperator = globalOp[0];
            string var_left = assignNode->get_left_hand_operand()->source_code(indentation);
            if (vdg.find(var_left) != vdg.end()) {
                var_left = vdg[var_left];
            }
            rightEx_re = var_left + binoperator;
        }
        auto RHD = assignNode->get_right_hand_operand();
        if (RHD->get_node_type() == NodeTypeBinaryOperation) {
            rightEx_re += handBinop(RHD, vdg);
        } else {
            string right_var_name = RHD->source_code(indentation);
            if (vdg.find(right_var_name) != vdg.end()) {
                right_var_name = vdg[right_var_name];
            }
            rightEx_re += right_var_name;
        }
        return rightEx_re;
    }

    void handleCondition(BinaryOperationNodePtr condi_node, string &tmpPathCons, map<string, string> &vdg) {
        Indentation indentation;
        auto lst = condi_node->get_left_hand_operand();
        auto rst = condi_node->get_right_hand_operand();
        string op = condi_node->get_operator();
        string left_var, right_var;

        if (lst->get_node_type() == NodeTypeBinaryOperation) {
            left_var = handBinop(lst, vdg);
        } else {
            left_var = lst->source_code(indentation);
            if (vdg.find(left_var) != vdg.end()) {
                left_var = vdg[left_var];
            }
        }

        if (rst->get_node_type() == NodeTypeBinaryOperation) {
            right_var = handBinop(rst, vdg);
        } else if (rst->get_node_type() == NodeTypeUnaryOperation) {
            UnaryOperationNodePtr uncondi = dynamic_pointer_cast<UnaryOperationNode>(rst);
            string op = uncondi->get_operator();
            string condition;
            auto condi = uncondi->get_operand();
            if (condi->get_node_type() == NodeTypeTupleExpression) {
                TupleExpressionNodePtr tupleNode = dynamic_pointer_cast<TupleExpressionNode>(condi);
                auto expr = tupleNode->get_member(0);
                if (expr->get_node_type() == NodeTypeBinaryOperation) {
                    condition = handBinop(expr, vdg);
                }
            } else {
                condition = condi->source_code(indentation);
                if (vdg.size() != 0) {
                    if (vdg.find(condition) != vdg.end()) {
                        condition = vdg[condition];
                    }
                }
            }
            right_var = "  " + op + "( " + condition + " )  ";
        } else {
            right_var = rst->source_code(indentation);
            if (vdg.size() != 0) {
                if (vdg.find(right_var) != vdg.end()) {
                    right_var = vdg[right_var];
                }
            }
        }
       tmpPathCons += left_var + op + right_var;
    }

    void handleBlock(BlockNodePtr blockNode, string &tmpPathCons, map<string, string> &vdg) {
        for (auto m = 0; m < blockNode->num_statements(); m++) {
            ASTNodePtr st_tmp = blockNode->get_statement(m);
            if (st_tmp->get_node_type() == NodeTypeIfStatement) {
                IfStatementNodePtr ifstNode = dynamic_pointer_cast<IfStatementNode>(st_tmp);
                ifSt(ifstNode, tmpPathCons, vdg);
            } else if (st_tmp->get_node_type() == NodeTypeExpressionStatement) {
                ExpressionStatementNodePtr exprNode = dynamic_pointer_cast<ExpressionStatementNode>(st_tmp);
                exprSt(exprNode, tmpPathCons, vdg);
            } else if (st_tmp->get_node_type() == NodeTypeVariableDeclarationStatement) {
                VariableDeclarationStatementNodePtr varDeclNode = dynamic_pointer_cast<VariableDeclarationStatementNode>(
                        st_tmp);
                varDeclSt(varDeclNode, vdg);
            }
        }
    }


    void varDeclSt(VariableDeclarationStatementNodePtr varDecalSTNode, map<string, string> &vdg) {
        Indentation indentation;
        VariableDeclarationNodePtr varDecalNode = varDecalSTNode->get_decl();
        string var_name = varDecalNode->get_variable_name();
        ASTNodePtr valueNode = varDecalSTNode->get_value();
        if (valueNode->get_node_type() == NodeTypeVariableDeclaration) {
            VariableDeclarationNodePtr rightValueNode = dynamic_pointer_cast<VariableDeclarationNode>(valueNode);
            string rvalue = handVarDecl(rightValueNode, vdg);
            if(containAriOp(rvalue)){
                rvalue = "(" + rvalue + ")";
            }
            vdg[var_name] = rvalue;
        } else if (valueNode->get_node_type() == NodeTypeBinaryOperation) {
            string re = handBinop(valueNode, vdg);
            if(containAriOp(re)) {
                re = "(" + re + ")";
            }
                vdg[var_name] = re;
        } else if (valueNode->get_node_type() == NodeTypeIndexAccess) {
            auto src = valueNode->source_code(indentation);
            if(containAriOp(src)) {
                src = "(" + src + ")";
            }
            vdg[var_name] = src;
        } else {
            auto src = valueNode->source_code(indentation);
            if(containAriOp(src)) {
                src = "(" + src + ")";
            }
            vdg[var_name] = src;
        }

    }

    void exprSt(ExpressionStatementNodePtr esn, string &tmpPathCons, map<string, string> &vdg) {
        Indentation indentation;
        auto esnExpr = esn->get_expression();
        if (esnExpr->get_node_type() == NodeTypeAssignment) {
            AssignmentNodePtr assignment = dynamic_pointer_cast<AssignmentNode>(esnExpr);
            auto LeftNode = assignment->get_left_hand_operand();
            string var_name = LeftNode->source_code(indentation);
            if (var_name != "") {
                auto src = handleAssign(assignment, vdg);
                if(containAriOp(src)) {
                    src = "(" + src + ")";
                }
                vdg[var_name] = src;
            }
        } else if (esnExpr->get_node_type() == NodeTypeFunctionCall &&
                (esnExpr->source_code(indentation).find("require") != string::npos || esnExpr->source_code(indentation).find("assert") != string::npos)) {
            FunctionCallNodePtr requireState = dynamic_pointer_cast<FunctionCallNode>(esnExpr);
            auto state = requireState->get_argument(0);
            string condition;
            if (state->get_node_type() == NodeTypeUnaryOperation) {
                UnaryOperationNodePtr condi_node = dynamic_pointer_cast<UnaryOperationNode>(state);
                string op = condi_node->get_operator();
                auto condi = condi_node->get_operand();
                if (condi->get_node_type() == NodeTypeTupleExpression) {
                    TupleExpressionNodePtr tupleNode = dynamic_pointer_cast<TupleExpressionNode>(condi);
                    auto expr = tupleNode->get_member(0);
                    if (expr->get_node_type() == NodeTypeBinaryOperation) {
                        condition = handBinop(expr, vdg);
                    }
                } else {
                    condition = condi->source_code(indentation);
                    if (vdg.size() != 0) {
                        if (vdg.find(condition) != vdg.end()) {
                            condition = vdg[condition];
                        }
                    }
                }
                tmpPathCons += op + "(" + condition + ")";
            } else {
                string condistr = state->source_code(indentation);
                if (!containTaintOp(condistr)) {
                    condition = condistr;
                    if (vdg.size() != 0) {
                        if (vdg.find(condition) != vdg.end()) {
                            condition = vdg[condition];
                        }
                    }
                    tmpPathCons += condition;
                } else {
                    BinaryOperationNodePtr condi_node = dynamic_pointer_cast<BinaryOperationNode>(state);
                    handleCondition(condi_node, tmpPathCons, vdg);
                }
            }
        }
    }

    void ifSt(IfStatementNodePtr ifNode, string &tmpPathCons, map<string, string> &vdg) {
        Indentation indentation;
        BlockNodePtr ifblock;
        auto elseNode = ifNode->get_else();
        auto condNode = ifNode->get_condition();
        if (condNode->get_node_type() == NodeTypeBinaryOperation) {
            BinaryOperationNodePtr condi_node = dynamic_pointer_cast<BinaryOperationNode>(condNode);
            handleCondition(condi_node, tmpPathCons, vdg);
        } else if (condNode->get_node_type() == NodeTypeUnaryOperation) { //一元条件分支 如非（！）
            UnaryOperationNodePtr uncondi = dynamic_pointer_cast<UnaryOperationNode>(condNode);
            string op = uncondi->get_operator();
            string condition;
            auto condi = uncondi->get_operand();
            if (condi->get_node_type() == NodeTypeTupleExpression) {
                TupleExpressionNodePtr tupleNode = dynamic_pointer_cast<TupleExpressionNode>(condi);
                auto expr = tupleNode->get_member(0);
                if (expr->get_node_type() == NodeTypeBinaryOperation) {
                    condition = handBinop(expr, vdg);
                }
            }
            tmpPathCons += op + "( " + condition + " )";
        } else if (condNode->get_node_type() == NodeTypeTupleExpression) {
            TupleExpressionNodePtr tupleNode = dynamic_pointer_cast<TupleExpressionNode>(condNode);
            auto elem = tupleNode->get_member(0);
            if (elem->get_node_type() == NodeTypeBinaryOperation) {
                BinaryOperationNodePtr condi_node = dynamic_pointer_cast<BinaryOperationNode>(elem);
                handleCondition(condi_node, tmpPathCons, vdg);
            }
        }

        if (ifNode->get_then() != NULL) {
            ifblock = dynamic_pointer_cast<BlockNode>(ifNode->get_then());
        } else if (ifNode->get_else() != NULL) {
            ifblock = dynamic_pointer_cast<BlockNode>(ifNode->get_else());
        }
        if (ifblock != NULL) {
            handleBlock(ifblock, tmpPathCons, vdg);
        }
    }


//revision get all paths follwing to target lines
    void getAllPaths(vector<int> tls, map<string, pathInfo> &cfgPaths) {
        map<int, vector<blockRelation>> cfgBlockGAP(cfgBlock);
        vector<blockRelation> currentPath;
        string currentPathNumbers;
        typedef tuple<int, string, vector<blockRelation>, map<int, vector<blockRelation>>> pendingPath;
        vector<pendingPath> pendingPaths;
        int targetBlock = line2Block[tls[tls.size() - 1]]; //cout<<"pce 324 ttodotodorget Lines: ("<<tls[tls.size() - 1]<<") are subordinated to the  basic block: "<<targetBlock<<endl;
        if(targetBlock == 0){
            string tarline = sourceMapNum2Str[tls[tls.size() - 1]];
            tarline = split(tarline, ";")[0] + ";";
           int anotherTl = sourceMap[tarline];
           targetBlock = line2Block[anotherTl];
        }

        int loopBlock = 0;
        auto parentBlock = cfgBlockGAP[targetBlock];
        cfgBlockGAP.erase(targetBlock);
        bool loopAbort = false;
        while (!parentBlock.empty() || !pendingPaths.empty()) {
            vector<blockRelation> pPath(currentPath);
            for (auto iter = parentBlock.begin(); iter != parentBlock.end(); iter++) {
                if (iter > parentBlock.begin()) {
                    pPath.push_back(*iter);
                    int blockNum = get<0>(*iter);
                    if(blockNum >targetBlock) {
                        loopBlock = blockNum;
                    }
                    pendingPath tmpPpath(blockNum, currentPathNumbers, pPath, cfgBlockGAP);
                    pendingPaths.push_back(tmpPpath);
                }
            }
            if (parentBlock.begin() != parentBlock.end()) {
                targetBlock = get<0>(*(parentBlock.begin()));
                currentPath.push_back(*(parentBlock.begin()));
                string s;
                stringstream ss;
                ss<<targetBlock;
                ss>>s;
                currentPathNumbers = s + currentPathNumbers;
            }


            parentBlock = cfgBlockGAP[targetBlock];
            cfgBlockGAP.erase(targetBlock);
            if (targetBlock != 0 && parentBlock.empty()) {
                loopAbort = true;
            }

            if (targetBlock == 0 || loopAbort) {
                if (targetBlock == 0) {
                    cfgPaths[currentPathNumbers] = pathInfo(currentPath, loopBlock);
                }
                if (!pendingPaths.empty()) {
                    loopBlock = 0;
                    targetBlock = get<0>(*(pendingPaths.begin()));
                    currentPathNumbers = get<1>(*(pendingPaths).begin());
                    string s;
                    stringstream ss;
                    ss<<targetBlock;
                    ss>>s;
                    if(currentPathNumbers.size() >= 1){
                        string ln = currentPathNumbers.substr(currentPathNumbers.size()-1);
                        int lastNumer = atoi(ln.c_str());
                        if(targetBlock > lastNumer){
                            loopBlock = lastNumer;
                        }
                    }
                    currentPathNumbers = s + currentPathNumbers;
                    currentPath = get<2>(*(pendingPaths.begin()));
                    cfgBlockGAP = get<3>(*(pendingPaths.begin()));
                    parentBlock = cfgBlockGAP[targetBlock];
                    cfgBlockGAP.erase(targetBlock);
                    pendingPaths.erase(pendingPaths.begin());
                } else {
                    break;
                }
            }
        }

    }

//revision -- to get the path constraints and variable dependence graph for all paths
void  getConstraints(vector<int>& tlsInformation, string& bugTypeInformation, map<string, pathInfo>& pathInformation, vector<string>& commonPrefixRecord,  map<string, vector<pcVDR>>& completePathCons, ASTNodePtr& bug_node, string& textInsert_ree) {
        Indentation indentation;
        int loopBlock;
        string tl = sourceMapNum2Str[tlsInformation[0]];
        string tmpStRe;
        if(tl.find("for") != string::npos && tl.find("(") != string::npos){
            auto tlTmp = substr_by_edge(tl, "(", ")");
            tmpStRe = split(tlTmp, ";")[0];
        } else {
            tmpStRe = split(tl, ";")[0];
        }

        string forStatement;
        string ifPatternStr = "^\\s*if\\s*\\(";
        regex ifPattern(ifPatternStr);
        //traverse each path in the forward direction
        int targetBlock = line2Block[tlsInformation[0]];
        if(targetBlock == 0) {
            auto targetLineStr = sourceMapNum2Str[tlsInformation[0]];
            targetLineStr = split(targetLineStr, ";")[0] + ";";
            int collionLine = sourceMap[targetLineStr];
            targetBlock = line2Block[collionLine];
        }
        bool reachTarget;
        bool includeRee = bugTypeInformation.find("ree") != string::npos;
        string storeVarTextInsert_ree;
        for (auto onePath = pathInformation.begin(); onePath != pathInformation.end(); onePath++) {
            string pathCFGNums = onePath->first;
            pathInfo pathDetailedInfo = onePath->second;
            vector<blockRelation> blocksInPath = get<0>(pathDetailedInfo);
            int loopBlock = get<1>(pathDetailedInfo);
            string preForst;
            if(loopBlock > 0){
                int forLineCount = tlsInformation[0]-1;
                while(forLineCount > 0){
                    string st = sourceMapNum2Str[forLineCount];
                    if(st.find("for") != string::npos){
                        forStatement = st;
                        break;
                    }
                    forLineCount--;
                }
            }


            string cPathCons;
            map<string, string> vdg;
            vector<string> taints;
            string tmpPathCons = "";
            bool startAnalyzeTarblock;
            bool includingForSt, initialFor, recordedFor;

            int commonFinalBlock = 0;
            bool hasPrefixSet, pcBreakPoint, startRemainingPath;
            string cprefixs;
            for(auto cprefix = commonPrefixRecord.begin(); cprefix != commonPrefixRecord.end(); cprefix++){
                if(strstr(pathCFGNums.c_str(), (*cprefix).c_str()) != NULL){
                    string largestBlock = (*cprefix).substr((*cprefix).size()-1,1);
                    commonFinalBlock = atoi(largestBlock.c_str());
                    cprefixs = *cprefix;
                    if(commonPrefix2Pathcons.find(*cprefix) != commonPrefix2Pathcons.end()){
                        auto commonVdg = get<1>(commonPrefix2Pathcons[*cprefix]);
                        vdg.insert(commonVdg.begin(), commonVdg.end());
                        hasPrefixSet = true;
                    }
                }
            }

            bool noPersonalPrefix = true;
            for (int basicBlock = blocksInPath.size() - 1; basicBlock >= 0; basicBlock--) {
                int currentBlock = get<0>(blocksInPath[basicBlock]);
                int relationship = get<1>(blocksInPath[basicBlock]);
                if(currentBlock <= commonFinalBlock && hasPrefixSet && !startAnalyzeTarblock){
                    if ((basicBlock == 0) && !startAnalyzeTarblock) {
                        basicBlock++;
                        startAnalyzeTarblock = true;
                    }
                    continue; }
                noPersonalPrefix = false;
                vector<ASTNodePtr> cblockNode = blocksNode[currentBlock];
                if (startAnalyzeTarblock){
                    currentBlock = targetBlock;
                    cblockNode = blocksNode[currentBlock];
                }
                if(commonFinalBlock != 0 && !hasPrefixSet && currentBlock == commonFinalBlock ){
                    pcBreakPoint = true;
                }

                for (auto stInCblock = cblockNode.begin(); stInCblock != cblockNode.end(); stInCblock++) {
                    NodeType nodeType = (*stInCblock)->get_node_type();
                    string currentStatText = (*stInCblock)->source_code(indentation);
                    string tmpSt = currentStatText;
                    remove_escapesALL(tmpSt);
                    if (startAnalyzeTarblock && (tmpStRe+ ";" == tmpSt || tmpStRe == tmpSt)) {
                        bug_node = *stInCblock;
                        reachTarget = true;
                        if (includeRee) {
                            continue;
                        } else {
                            break;
                        }
                    }

                    if (includeRee && reachTarget) {
                        if (currentStatText.find("=") != string::npos) {
                            textInsert_ree += currentStatText;
                        }
                    }
                    else {
                        if(forStatement != "" && forStatement.find(tmpSt) != string::npos){
                            repalce_all_ditinct(forStatement, tmpSt, currentStatText);
                            if(!recordedFor){
                                if (cPathCons != "") {
                                    cPathCons = cPathCons.substr(0, cPathCons.size() - 2);
                                    if(!regex_search(cPathCons, ifPattern)){
                                        cPathCons = "  if(" + cPathCons;
                                    }
                                    tmpPathCons = "){\n        " + forStatement + "\n";
                                    relationship = 1;
                                } else {
                                    tmpPathCons = forStatement;
                                }
                                preForst = forStatement;
                                includingForSt = true;
                                recordedFor = true;
                            } else{
                                repalce_all_ditinct(cPathCons, preForst, forStatement);
                                preForst = forStatement;
                            }
                        }
                        else if (nodeType == NodeTypeVariableDeclarationStatement) {
                            VariableDeclarationStatementNodePtr varDecalSTNode = dynamic_pointer_cast<VariableDeclarationStatementNode>(
                                    *stInCblock);
                            if (currentStatText.find("=") != string::npos) {
                                varDeclSt(varDecalSTNode, vdg);
                            }
                        }
                        else if (nodeType == NodeTypeExpressionStatement) {
                            ExpressionStatementNodePtr esn = dynamic_pointer_cast<ExpressionStatementNode>(*stInCblock);
                            exprSt(esn, tmpPathCons, vdg);
                        }
                        else if (nodeType == NodeTypeIfStatement) {
                            IfStatementNodePtr ifNode = dynamic_pointer_cast<IfStatementNode>(*stInCblock);
                            ifSt(ifNode, tmpPathCons, vdg);
                        }
                        else if (nodeType == NodeTypeBinaryOperation) {
                            BinaryOperationNodePtr boNode = dynamic_pointer_cast<BinaryOperationNode>(*stInCblock);
                            string text = boNode->source_code(indentation);
                            auto lvarNode = boNode->get_left_hand_operand();
                            auto rVarNode = boNode->get_right_hand_operand();
                            string lvar = lvarNode->source_code(indentation), rvar = rVarNode->source_code(indentation);
                            string op = boNode->get_operator();
                            if (lvarNode->get_node_type() == NodeTypeBinaryOperation) {
                                lvar = handBinop(lvarNode, vdg);
                            } else {
                                if (vdg.size() != 0) {
                                    if (vdg.find(lvar) != vdg.end()) {
                                        lvar = vdg[lvar];
                                    }
                                }
                            }
                            if (rVarNode->get_node_type() == NodeTypeBinaryOperation) {
                                rvar = handBinop(rVarNode, vdg);
                            }
                            else if(rVarNode->get_node_type() == NodeTypeUnaryOperation){
                                rvar = handUnary(rVarNode, vdg);
                            }
                            else {
                                if (vdg.size() != 0) {
                                    if (vdg.find(rvar) != vdg.end()) {
                                        rvar = vdg[rvar];
                                    }
                                }
                            }
                            string finalCondi = lvar + " " + op + " " + rvar;
                            if(loopBlock != 0 && currentBlock == loopBlock) {
                                auto tmp = forStatement;
                                remove_escapesALL(tmp);
                                remove_escapesALL(text);
                                auto forstatements = split(forStatement, ";");
                                forStatement = forstatements[0] + ";" + finalCondi + ";" + forstatements[2];
                                if (tmp.find(text) != string::npos) {
                                    if (cPathCons != "") {
                                        cPathCons = "  if( " + cPathCons.substr(0, cPathCons.size() - 2);
                                        tmpPathCons = "){\n" + forStatement;
                                        relationship = 1;
                                    } else {
                                        tmpPathCons = forStatement;
                                    }
                                    if(!initialFor){
                                        includingForSt = true;
                                    }

                                }
                            }
                            else {
                                tmpPathCons = finalCondi;
                            }
                        }
                        else if (nodeType == NodeTypeUnaryOperation) {
                            UnaryOperationNodePtr  unaryOpNode = dynamic_pointer_cast<UnaryOperationNode>(*stInCblock);
                            tmpPathCons += unaryOpNode->source_code(indentation);
                        }
                        else if (nodeType == NodeTypeMemberAccess){
                            MemberAccessNodePtr memberNode = dynamic_pointer_cast<MemberAccessNode>(*stInCblock);
                            string tmp = memberNode->source_code(indentation);
                            if(!containAriOp(tmp)){
                                tmpPathCons += tmp;
                            }
                        }
                        else if(nodeType == NodeTypeIndexAccess){
                            IndexAccessNodePtr  indexAccNode = dynamic_pointer_cast<IndexAccessNode>(*stInCblock);
                            string tmp = indexAccNode->source_code(indentation);
                            if(!containAriOp(tmp)){ //if (holderAccounts[_addr].alloced) exam 0x86ca189a5e189513b52c2018ca9e4918cffeb54b
                                tmpPathCons += tmp;
                            }
                        }
                        else if(nodeType == NodeTypeParameterList){
                            ParameterListNodePtr  paraNode = dynamic_pointer_cast<ParameterListNode>(*stInCblock);
                            for(auto x=0; x< paraNode->num_parameters(); x++){
                                auto parameter = paraNode->get_parameter(x);
                                if(containAriOp(parameter->source_code(indentation))){
                                    auto type = parameter->get_node_type();
                                    if(type == NodeTypeBinaryOperation){
                                        BinaryOperationNodePtr  binOpcode = dynamic_pointer_cast<BinaryOperationNode>(parameter);

                                    }

                                }
                            }

                        }
                    }
                }
                if (tmpPathCons != "") {
                  if (!includingForSt  && initialFor) {
                        if (relationship == 2) {
                            cPathCons += "\nif( !(" + tmpPathCons + ")" + "&&";
                        } else {
                            cPathCons += "\nif(" + tmpPathCons + "&&";
                        }
                        initialFor = false;
                    } else {
                        if (includingForSt ) {
                            initialFor = true;
                            includingForSt = false;
                            }

                            if (relationship == 2) {
                                cPathCons += "!(" + tmpPathCons + ")" + "&&";
                            } else {
                                if(char(tmpPathCons[tmpPathCons.size()-1]) != '{'  && char(tmpPathCons[tmpPathCons.size()-2]) != '{'){
                                    cPathCons += tmpPathCons + "&&";
                                } else{
                                    cPathCons += tmpPathCons;
                                }
                            }

                    }
                    tmpPathCons = "";
                }
                if ((basicBlock == 0) && !startAnalyzeTarblock) {
                    basicBlock++;
                    startAnalyzeTarblock = true;
                }
                if(pcBreakPoint){
                    string finalTwo;
                    if(cPathCons.size() > 2 && cPathCons.substr(cPathCons.size() - 2, 2) == "&&"){
                            cPathCons = cPathCons.substr(0, cPathCons.size() - 2) + "){";
                    }
                    commonPrefix2Pathcons[cprefixs] = pcVDR(cPathCons, vdg);
                    pcBreakPoint = false;
                    cPathCons = "";
                }
            }


            if(noPersonalPrefix) {
                cPathCons = "";
            }
            if(cPathCons.size()>2 && cPathCons.substr(cPathCons.size() - 2, 2) == "&&"){
                cPathCons = cPathCons.substr(0, cPathCons.size() - 2);
            }
            if (!initialFor && cPathCons != "") {
                cPathCons += "){\n";
            }
            pcVDR cPathInfo(cPathCons, vdg);
            if(commonPrefix2Pathcons.find(cprefixs) != commonPrefix2Pathcons.end()){
                completePathCons[get<0>(commonPrefix2Pathcons[cprefixs])].push_back(cPathInfo);
            } else{
                completePathCons[""].push_back(cPathInfo);
            }
        }

        if (pathInformation.empty()) {
            string cPathCons = "";
            map<string, string> vdg;
            vector<ASTNodePtr> cblockNode = blocksNode[targetBlock];
            for (auto stInCblock = cblockNode.begin(); stInCblock != cblockNode.end(); stInCblock++) {
                NodeType nodeType = (*stInCblock)->get_node_type();
                string currentStatText = (*stInCblock)->source_code(indentation);
                string tmpSt = currentStatText;
                remove_escapesALL(tmpSt);
                if (sourceMap[tmpSt] == tlsInformation[0]) {
                    bug_node = *stInCblock;
                    reachTarget = true;
                    if (includeRee) {
                        continue;
                    } else {
                        cPathCons = cPathCons.substr(0, cPathCons.size() - 2);
                        pcVDR cPathInfo( cPathCons, vdg);
                        completePathCons[""].push_back(cPathInfo);
                        break;
                    }
                }

                if (includeRee && reachTarget) {
                    if (currentStatText.find("=") != string::npos) {
                        textInsert_ree += currentStatText;
                    }
                } else {
                    if (nodeType == NodeTypeVariableDeclarationStatement) {
                        VariableDeclarationStatementNodePtr varDecalSTNode = dynamic_pointer_cast<VariableDeclarationStatementNode>(
                                *stInCblock);
                        if (currentStatText.find("=") != string::npos) {
                            varDeclSt(varDecalSTNode, vdg);
                        }
                    } else if (nodeType == NodeTypeExpressionStatement) {
                        ExpressionStatementNodePtr esn = dynamic_pointer_cast<ExpressionStatementNode>(*stInCblock);
                        exprSt(esn, cPathCons, vdg);
                    }

                }
            }
        }
    }

void organizeInfo(vector<bugInfo>& bugInfos, ASTAnalyser& ast_analyser, RootNodePtr& origin_root_node, map<string, vector<bugInfoForSye>>& allInfoForCsyn) {
    map<string, vector<completeBugInfo>> completeBugInfos;
    for(auto iter = bugInfos.begin(); iter != bugInfos.end(); iter++){
        cfgBlock.clear();
        blocksNode.clear();
        blocks.clear();
        vector<int> tls = get<0>(*iter);
        string targetFunc = get<2>(*iter);
        ast_analyser.cfgNodeConstructor(origin_root_node, targetFunc);
        map<string, pathInfo> cfgPaths;
        int loopBlock;
        getAllPaths(tls, cfgPaths);
        completeBugInfos[targetFunc].push_back(completeBugInfo(*iter, cfgPaths));
    }

    map<string, vector<string>> commonPathPrefix;
    for(auto iter = completeBugInfos.begin(); iter != completeBugInfos.end(); iter++){
        if((iter->second).size() > 1){
            string funcWithMultiTls = iter->first;
            for(auto cBugInfo = (iter->second).begin(); cBugInfo < (iter->second).end(); cBugInfo++){
                for (auto cBugInfoCompare = cBugInfo + 1; cBugInfoCompare != (iter->second).end(); cBugInfoCompare++){
                    map<string, pathInfo> tmpBugInfo = get<1>(*cBugInfo);
                    map<string, pathInfo> tmpBugInfoCompare = get<1>(*cBugInfoCompare);
                    for(auto detailedPath = tmpBugInfo.begin(); detailedPath != tmpBugInfo.end(); detailedPath++){
                        for(auto detailedPathCompare = tmpBugInfoCompare.begin(); detailedPathCompare != tmpBugInfoCompare.end(); detailedPathCompare++){
                           string path1 = detailedPath->first;
                            string path2 = detailedPathCompare->first;
                            string commonPrefix = longestCommonPrefix(path1, path2);
                            if(commonPrefix != ""){
                               commonPathPrefix[funcWithMultiTls].push_back(commonPrefix);
                            }
                        }
                    }
                }
            }
        }
    }

    for(auto iter = completeBugInfos.begin(); iter != completeBugInfos.end(); iter++){
        string targetFunc = get<0>(*iter);
        line2Block.clear();
        ast_analyser.cfgNodeConstructor(origin_root_node, targetFunc);
        vector<string> commonPrefixRecord = commonPathPrefix[targetFunc];
        vector<completeBugInfo> multiBugsInAfunc = get<1>(*iter);
        for(auto singleBug = multiBugsInAfunc.begin(); singleBug != multiBugsInAfunc.end(); singleBug++){
            bugInfo bugInformation = get<0>(*singleBug);
            map<string, pathInfo> pathInformation = get<1>(*singleBug);
            vector<int> tlsInformation = get<0>(bugInformation);
            string bugTypeInformation = get<1>(bugInformation);

            map<string,vector<pcVDR>>completePathCons;
            ASTNodePtr bug_node;
            string textInsert_ree;
            getConstraints(tlsInformation, bugTypeInformation, pathInformation, commonPrefixRecord, completePathCons, bug_node, textInsert_ree);
            allInfoForCsyn[targetFunc].push_back(bugInfoForSye(bugTypeInformation, tlsInformation, bug_node, textInsert_ree, completePathCons));
        }
    }
}
}