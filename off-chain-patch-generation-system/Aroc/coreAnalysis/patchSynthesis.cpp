//
// Created by Administrator on 2021/5/27.
//
#include "patchSynthesis.h"
namespace Aroc {
    Indentation indentation;
    using namespace Utils;
    map<string,bool> avoidRepeatedStr;
    void patchAri(ASTNodePtr &bug_node, string &textInsert_ari_final) {
        string *textsInsert_ari = new string[10];
        int num_ari = 0;
        //get Lvar, op, and Rvar
        ASTNodePtr LHD;
        ASTNodePtr RHD;
        string result_type;
        string binOperationOperator;
        string rightExpresser;
       if(bug_node->get_node_type() == NodeTypeReturn){
           auto tmpNode = dynamic_pointer_cast<ReturnNode>(bug_node);
           bug_node = tmpNode->get_operand();
       }
        if (bug_node->get_node_type() == NodeTypeExpressionStatement) {
            ExpressionStatementNodePtr esn = dynamic_pointer_cast<ExpressionStatementNode>(bug_node);
            auto esnExpression = esn->get_expression();
            if (esnExpression->get_node_type() == NodeTypeAssignment) {
                string globalOp;
                AssignmentNodePtr assignment = dynamic_pointer_cast<AssignmentNode>(
                        esnExpression);
                globalOp = assignment->get_operator();
                if (globalOp.length() == 2) {
                    binOperationOperator = globalOp[0];
                    LHD = assignment->get_left_hand_operand();
                    RHD = assignment->get_right_hand_operand();
                    rightExpresser = RHD->source_code(indentation) + " " + binOperationOperator + " " +
                                     LHD->source_code(indentation);
                    result_type = "uint";
                } else {
                    ASTNodePtr operation = assignment->get_right_hand_operand();
                    if (operation->get_node_type() == NodeTypeBinaryOperation && assignment->get_operator() == "=") {
                        rightExpresser = assignment->get_right_hand_operand()->source_code(indentation);
                        auto binaryOperation = dynamic_pointer_cast<BinaryOperationNode>(operation);
                        LHD = binaryOperation->get_left_hand_operand();
                        RHD = binaryOperation->get_right_hand_operand();
                        result_type = binaryOperation->get_return_type_str();
                        binOperationOperator = binaryOperation->get_operator();
                        if(!containLetter(RHD->source_code(indentation))){
                            if(LHD->get_node_type() == NodeTypeBinaryOperation){
                                auto tmpNode = dynamic_pointer_cast<BinaryOperationNode>(LHD);
                                LHD = tmpNode->get_left_hand_operand();
                                RHD = tmpNode->get_right_hand_operand();
                                binOperationOperator = tmpNode->get_operator();
                            }
                        }
                    }
                }
            }
            else if (esnExpression->get_node_type() == NodeTypeFunctionCall) {
                FunctionCallNodePtr requireState = dynamic_pointer_cast<FunctionCallNode>(
                        esnExpression);
                for(auto i = 0; i<requireState->num_arguments();i++){
                    auto state = requireState->get_argument(i);
                    auto stateType = state->get_node_type();
                    if ( stateType == NodeTypeBinaryOperation) {
                        BinaryOperationNodePtr condi_node = dynamic_pointer_cast<BinaryOperationNode>(state);
                        ASTNodePtr ari_stat;
                        if (requireState->source_code(indentation).find("require") != string::npos || requireState->source_code(indentation).find("assert") != string::npos) {
                            string tmp = condi_node->get_right_hand_operand()->source_code(indentation);
                            if (containTaintOp(tmp)) {
                                ari_stat = condi_node->get_right_hand_operand();
                            } else {
                                ari_stat = condi_node->get_left_hand_operand();
                            }
                        } else {
                            ari_stat = condi_node;
                        };
                        if(ari_stat->get_node_type() ==  NodeTypeTupleExpression){
                            auto tmpNode = dynamic_pointer_cast<TupleExpressionNode>(ari_stat);
                            ari_stat = tmpNode->get_member(0);
                        }
                        if (ari_stat->get_node_type() == NodeTypeBinaryOperation) {
                            BinaryOperationNodePtr ari_node = dynamic_pointer_cast<BinaryOperationNode>(ari_stat);
                            rightExpresser = ari_node->source_code(indentation);
                            LHD = ari_node->get_left_hand_operand();
                            RHD = ari_node->get_right_hand_operand();
                            result_type = ari_node->get_return_type_str();
                            binOperationOperator = ari_node->get_operator();
                          }
                    }
                    else if(stateType == NodeTypeTupleExpression){
                        auto tmpNode = dynamic_pointer_cast<TupleExpressionNode>(state);
                        bug_node = tmpNode->get_member(0);;
                        patchAri(bug_node, textInsert_ari_final);
                        bug_node = NULL;
                    }
                }

            }
        }
        else if (bug_node->get_node_type() == NodeTypeVariableDeclarationStatement) {
            VariableDeclarationStatementNodePtr vdsn = dynamic_pointer_cast<VariableDeclarationStatementNode>(
                    bug_node);
            auto initial_value = vdsn->get_value();
            if (initial_value != nullptr) {
                if (initial_value->get_node_type() == NodeTypeBinaryOperation) {
                    auto binaryOperation = dynamic_pointer_cast<BinaryOperationNode>(
                            initial_value);
                    rightExpresser = binaryOperation->source_code(indentation);
                    LHD = binaryOperation->get_left_hand_operand();
                    RHD = binaryOperation->get_right_hand_operand();
                    result_type = binaryOperation->get_return_type_str();
                    binOperationOperator = binaryOperation->get_operator();
                    string RHDsrc = RHD->source_code(indentation);
                    string LHDsrc = LHD->source_code(indentation);
                    if(containLetter(RHDsrc) && containAriOp(RHDsrc) && !containLetter(LHDsrc)){
                        BinaryOperationNodePtr rhdNode;
                        if(RHD->get_node_type() == NodeTypeBinaryOperation){
                             rhdNode = dynamic_pointer_cast<BinaryOperationNode>(RHD);
                        }else if(RHD->get_node_type() == NodeTypeTupleExpression){
                            auto tmpNode = dynamic_pointer_cast<TupleExpressionNode>(RHD);
                            auto tmpNode1 = tmpNode->get_member(0);
                            rhdNode = dynamic_pointer_cast<BinaryOperationNode>(tmpNode1);
                        }
                        LHD = rhdNode->get_left_hand_operand();
                        RHD = rhdNode->get_right_hand_operand();
                        result_type = rhdNode->get_return_type_str();
                        result_type = rhdNode->get_return_type_str();
                    } else if (containLetter(LHDsrc) && containAriOp(LHDsrc) && !containLetter(RHDsrc) ) {
                        BinaryOperationNodePtr lhdNode;
                        if(LHD->get_node_type() == NodeTypeBinaryOperation){
                            lhdNode = dynamic_pointer_cast<BinaryOperationNode>(LHD);
                        }else if(LHD->get_node_type() == NodeTypeTupleExpression){
                            auto tmpNode = dynamic_pointer_cast<TupleExpressionNode>(LHD);
                            auto tmpNode1 = tmpNode->get_member(0);
                            lhdNode = dynamic_pointer_cast<BinaryOperationNode>(tmpNode1);
                        }
                        dynamic_pointer_cast<BinaryOperationNode>(LHD);
                        LHD = lhdNode->get_left_hand_operand();
                        RHD = lhdNode->get_right_hand_operand();
                        result_type = lhdNode->get_return_type_str();
                        binOperationOperator = lhdNode->get_operator();
                    }
                }
                else if(initial_value->get_node_type() == NodeTypeFunctionCall){
                    auto tmpNode = dynamic_pointer_cast<FunctionCallNode>(initial_value);
                     auto calleeNode = tmpNode->get_callee();
                     string callee = calleeNode->source_code(indentation);
                     if(containAriOp(callee)){
                         if(calleeNode->get_node_type() == NodeTypeMemberAccess){
                             auto memAccNode = dynamic_pointer_cast<MemberAccessNode>(calleeNode);
                             auto memNode = memAccNode->get_identifier();
                            ASTNodePtr  binNode;
                            if(memNode->get_node_type() == NodeTypeTupleExpression){
                                 auto tupNode = dynamic_pointer_cast<TupleExpressionNode>(memNode);
                                 binNode = tupNode->get_member(0); }
                             if(binNode->get_node_type() == NodeTypeBinaryOperation){
                                 BinaryOperationNodePtr ari_node = dynamic_pointer_cast<BinaryOperationNode>(binNode);
                                 rightExpresser = ari_node->source_code(indentation);
                                 LHD = ari_node->get_left_hand_operand();
                                 RHD = ari_node->get_right_hand_operand();
                                 result_type = ari_node->get_return_type_str();
                                 binOperationOperator = ari_node->get_operator();
                             }
                         }
                     }
                     else {
                         for(int i = 0; i< tmpNode->num_arguments(); i++){
                             auto parms = tmpNode->get_argument(i);
                             if(parms->get_node_type() == NodeTypeBinaryOperation){
                                 BinaryOperationNodePtr ari_node = dynamic_pointer_cast<BinaryOperationNode>(parms);
                                 rightExpresser = ari_node->source_code(indentation);
                                 LHD = ari_node->get_left_hand_operand();
                                 RHD = ari_node->get_right_hand_operand();
                                 result_type = ari_node->get_return_type_str();
                                 binOperationOperator = ari_node->get_operator();
                             }
                         }
                     }
                }
            }
        }
        else if (bug_node->get_node_type() == NodeTypeBinaryOperation) {
            BinaryOperationNodePtr ari_node = dynamic_pointer_cast<BinaryOperationNode>(bug_node);
            rightExpresser = ari_node->source_code(indentation);
            LHD = ari_node->get_left_hand_operand();
            RHD = ari_node->get_right_hand_operand();
            result_type = ari_node->get_return_type_str();
            binOperationOperator = ari_node->get_operator();
            string RHDsrc = RHD->source_code(indentation);
            string LHDsrc = LHD->source_code(indentation);
            if (!containAriOp(binOperationOperator) || !containLetter(RHDsrc) || !containLetter(LHDsrc)) {
                if (containAriOp(RHDsrc) && containLetter(RHDsrc)) {
                    patchAri(RHD, textInsert_ari_final);
                    RHD = NULL;
                } else if (containAriOp(LHDsrc) && containLetter(LHDsrc)) {
                        patchAri(LHD, textInsert_ari_final);
                        LHD = NULL;
                 }
            } }
        else if (bug_node->get_node_type() == NodeTypeTupleExpression){
            auto tmpNode = dynamic_pointer_cast<TupleExpressionNode>(bug_node);
            bug_node = tmpNode->get_member(0);
            patchAri(bug_node, textInsert_ari_final);
            bug_node = NULL;
        }
        else if (bug_node->get_node_type() == NodeTypeFunctionCall){
            auto tmpNode = dynamic_pointer_cast<FunctionCallNode>(bug_node);
            for(auto i = 0; i<tmpNode->num_arguments();i++){
                auto state = tmpNode->get_argument(i);
                auto stateType = state->get_node_type();
                if ( stateType == NodeTypeBinaryOperation) {
                    BinaryOperationNodePtr condi_node = dynamic_pointer_cast<BinaryOperationNode>(state);
                    ASTNodePtr ari_stat;
                    if (tmpNode->source_code(indentation).find("require") != string::npos || tmpNode->source_code(indentation).find("assert") != string::npos) {
                        string tmp = condi_node->get_right_hand_operand()->source_code(indentation);
                        if (containTaintOp(tmp)) {
                            ari_stat = condi_node->get_right_hand_operand();
                        } else {
                            ari_stat = condi_node->get_left_hand_operand();
                        }
                    } else {
                        ari_stat = condi_node;
                    };
                    if(ari_stat->get_node_type() ==  NodeTypeTupleExpression){
                        auto tmpNode = dynamic_pointer_cast<TupleExpressionNode>(ari_stat);
                        ari_stat = tmpNode->get_member(0);
                    }
                    if (ari_stat->get_node_type() == NodeTypeBinaryOperation) {
                        BinaryOperationNodePtr ari_node = dynamic_pointer_cast<BinaryOperationNode>(ari_stat);
                        rightExpresser = ari_node->source_code(indentation);
                        LHD = ari_node->get_left_hand_operand();
                        RHD = ari_node->get_right_hand_operand();
                        result_type = ari_node->get_return_type_str();
                        binOperationOperator = ari_node->get_operator();
                        }
                }
                else if(stateType == NodeTypeTupleExpression){
                    auto tmpNode = dynamic_pointer_cast<TupleExpressionNode>(state);
                    bug_node = tmpNode->get_member(0);
                    patchAri(bug_node, textInsert_ari_final);
                    bug_node = NULL;
                }
            }
        }
        else if (bug_node->get_node_type() == NodeTypeUnaryOperation){
                UnaryOperationNodePtr unaryNode = dynamic_pointer_cast<UnaryOperationNode>(bug_node);
                auto operandNode = unaryNode->get_operand();
                if(operandNode->get_node_type() == NodeTypeFunctionCall){
                    FunctionCallNodePtr  funcCallNode = dynamic_pointer_cast<FunctionCallNode>(operandNode);
                    auto parmNode = funcCallNode->get_argument(0);
                    if(parmNode->get_node_type() == NodeTypeBinaryOperation){
                        bug_node = parmNode;
                        patchAri(bug_node, textInsert_ari_final);
                        bug_node = NULL;
                    }
                }
            }
        else { cout << "No handle this type: " << bug_node->get_node_type() << endl; }
        ariOp:
        if(RHD != NULL && LHD != NULL) {
            if (binOperationOperator == "/" ) {
               string rhdSrc = RHD->source_code(indentation);
               if(containLetter(rhdSrc)){
                   textsInsert_ari[num_ari++] = "\n          require(" + rhdSrc  + "!= 0);\n";
               }

            }
            if (binOperationOperator == "*") {
                textsInsert_ari[num_ari++] =
                        "\n            if(" + LHD->source_code(indentation) + "!=0 && " +
                        RHD->source_code(indentation) +
                        "!=0){\n          require((" + rightExpresser + "/" + LHD->source_code(indentation) + "==" +
                        RHD->source_code(indentation) + ") && (" + rightExpresser + "/" +
                        RHD->source_code(indentation) +
                        "==" + LHD->source_code(indentation) + "));\n" + "            }";
            }
            if (result_type.find("uint") != string::npos) {
                if (binOperationOperator == "+") {
                    textsInsert_ari[num_ari++] =
                            "         require((" + rightExpresser + ">=" + LHD->source_code(indentation) + ") && (" +
                            rightExpresser + ">=" + RHD->source_code(indentation) + "));\n";
                } else if (binOperationOperator == "-") {
                    textsInsert_ari[num_ari++] =
                            "          require(" + LHD->source_code(indentation) + ">=" +
                            RHD->source_code(indentation) + ");\n";
                }
            } else if (result_type.find("int") != string::npos) {
                if (binOperationOperator == "+") {
                    textsInsert_ari[num_ari++] =
                            "          require((" + RHD->source_code(indentation) + ">= 0 &&" + rightExpresser + ">=" +
                            LHD->source_code(indentation) + ") || (" + RHD->source_code(indentation) + "< 0 && " +
                            rightExpresser + "<" + LHD->source_code(indentation) + ") );\n";
                } else if (binOperationOperator == "-") {
                    textsInsert_ari[num_ari++] =
                            "          require((" + RHD->source_code(indentation) + ">= 0 &&" + rightExpresser + "<=" +
                            LHD->source_code(indentation) + ") || (" + RHD->source_code(indentation) + "< 0 && " +
                            rightExpresser + ">" + LHD->source_code(indentation) + ") );\n";
                }
            }


            if(RHD->get_node_type() == NodeTypeTupleExpression){
                TupleExpressionNodePtr tmpNode = dynamic_pointer_cast<TupleExpressionNode>(RHD);
                RHD = tmpNode->get_member(0);
            }

            if(LHD->get_node_type() == NodeTypeTupleExpression){
                TupleExpressionNodePtr tmpNode = dynamic_pointer_cast<TupleExpressionNode>(LHD);
                LHD = tmpNode->get_member(0);
            }
            if (RHD->get_node_type() == NodeTypeBinaryOperation && containLetter(RHD->source_code(indentation))) {
                auto binaryOperation = dynamic_pointer_cast<BinaryOperationNode>(RHD);
                rightExpresser = binaryOperation->source_code(indentation);
                LHD = binaryOperation->get_left_hand_operand();
                RHD = binaryOperation->get_right_hand_operand();
                result_type = binaryOperation->get_return_type_str();
                binOperationOperator = binaryOperation->get_operator();
                goto ariOp;
            }
            if (LHD->get_node_type() == NodeTypeBinaryOperation && containLetter(LHD->source_code(indentation))) {
                auto binaryOperation = dynamic_pointer_cast<BinaryOperationNode>(LHD);
                rightExpresser = binaryOperation->source_code(indentation);
                LHD = binaryOperation->get_left_hand_operand();
                RHD = binaryOperation->get_right_hand_operand();
                result_type = binaryOperation->get_return_type_str();
                binOperationOperator = binaryOperation->get_operator();
                goto ariOp;
            }

        }


        if (num_ari > 0) {
            for (auto i = 0; i < num_ari; i++) {
                textInsert_ari_final += textsInsert_ari[i];
            }
        }

    }

    string reeConditionExtractor(string textInsert_ree) {
        vector<string> varChanges = split(textInsert_ree, "\n");
        string stateVarCons;
        for (auto tmpIt = varChanges.begin(); tmpIt != varChanges.end(); tmpIt++) {
            string tmp = *tmpIt;
            if (tmp.find("=") != string::npos) {
                vector<string> vars = split(tmp, " ");
                remove_escapesALL(vars[2]);
                if (vars[2].find(";") != string::npos) {
                    vars[2] = vars[2].substr(0, vars[2].find(";"));
                }
                string zero_str = "0";
                if (vars[2] == zero_str) {
                    stateVarCons += vars[0] + ">" + vars[2] + "\n";
                } else if (vars[2] == "true") {
                    stateVarCons += vars[0] + vars[1] + "= false" + "\n";
                } else if (vars[2] == "false") {
                    stateVarCons += vars[0] + vars[1] + "= true" + "\n";
                } else {
                    stateVarCons += vars[0] + ">=" + vars[2] + "\n";
                }
            }
        }
        return stateVarCons;
    }


    void contractSyn(string &vulFunc,  map<string, vector<pcVDR>> &completePathCons, string &bugType, vector<ASTNodePtr> &tarBlockNodes, string &tarLineStr, ASTNodePtr &bug_node,
                            string &textInsert_ree, vector<ASTNodePtr> &stateVars,
                            map<string, set<string>> &repairRules,
                            set<VariableDeclarationNodePtr> &taintedStateVar) {
        //Module1 automatically generate arithmetic repair contract
        string ari_insertRules, ull_insertIf, ori_insertRules;
        map<string, string> iftextInsert_reeInfos, ietextInsert_ree2_elseInfos;
        string forPatternStr = "\\s*for\\s*\\([\\s*\\S+\\s*]+\\)\\{";
        regex forPattern(forPatternStr);
        if (bugType.find("ari") != string::npos && bug_node != NULL) {
            patchAri(bug_node, ari_insertRules);
        } else if (bugType.find("ull") != string::npos && bug_node != NULL) {
            string src = bug_node->source_code(indentation);
            repalce_all_ditinct(src, ";", "");
            ull_insertIf = src;
        } else if(bugType.find("ori") != string::npos ){
            ori_insertRules = "    require(owner == msg.sender);";
        }
       if (!completePathCons.empty()) {
            for (auto iter = completePathCons.begin(); iter != completePathCons.end(); iter++) {
                string commonPathCons = iter->first;
                vector<pcVDR> multiBugDots = iter->second;
                for (auto oneBug = multiBugDots.begin(); oneBug != multiBugDots.end(); oneBug++) {
                    string cFinalInsertInfo;
                    string personalPathCons = get<0>(*oneBug);
                    map<string, string> vdg = get<1>(*oneBug);
                    for (auto iter = vdg.begin(); iter != vdg.end(); iter++) {
                        if (ari_insertRules != "") { repalce_all_ditinct_variable(ari_insertRules, iter->first, iter->second); }
                        if (textInsert_ree != "") { repalce_all_ditinct_variable(textInsert_ree, iter->first, iter->second); }
                        if (ull_insertIf != "") { repalce_all_ditinct_variable(ull_insertIf, iter->first, iter->second); }
                    }
                    if (bugType.find("ari") != string::npos) {
                        cFinalInsertInfo += ari_insertRules;
                    }
                    //ull patch
                    if (bugType.find("ull") != string::npos) {
                        ull_insertIf = "          if( " + ull_insertIf + "){\n          assert(0==1);\n        }else{\n          revert();\n        }";

                        cFinalInsertInfo += ull_insertIf;
                    }
                    //ree patch
                    string completePathCons = commonPathCons + personalPathCons;
                    string ifPatternStr = "^\\s*if\\s*\\(";
                    regex ifPattern(ifPatternStr);
                    if (bugType.find("ree") != string::npos) {
                        string ieTextInfo, ieIfTextInfo, ieElseTextInfo = "\n  } else {\n";
                        for (auto iter = stateVars.begin(); iter != stateVars.end(); iter++) {
                            VariableDeclarationNodePtr tmpNode = dynamic_pointer_cast<VariableDeclarationNode>(*iter);
                            string varName = tmpNode->get_variable_name();
                            if (completePathCons.find(varName) != string::npos ||
                                textInsert_ree.find(varName) != string::npos) {
                                string tmpStr = tmpNode->source_code(indentation);
                                if (tmpStr.find("map") != string::npos) {
                                    ieElseTextInfo += "    " + varName + "[msg.sender]= " + varName + "1[msg.sender];\n";
                                } else {
                                    ieElseTextInfo += "    " + varName + "= " + varName + "1;\n";
                                }
                                repalce_all_ditinct(textInsert_ree, varName, varName + "1");
                                repalce_all_ditinct(personalPathCons, varName, varName + "1");
                                repalce_all_ditinct(commonPathCons, varName, varName + "1");
                                taintedStateVar.insert(tmpNode);
                            }
                        }
                        ieElseTextInfo += "    require(false);\n";
                        ieTextInfo =  textInsert_ree + ieElseTextInfo;
                        cFinalInsertInfo += ieTextInfo;
                    }
                    if (personalPathCons != "") {
                        if(regex_search(personalPathCons, forPattern)){
                            cFinalInsertInfo = personalPathCons + cFinalInsertInfo;
                        }else{
                            cFinalInsertInfo = "      if( " + personalPathCons + "" + cFinalInsertInfo + "        }\n";
                        }
                        if(bugType == "ull"){
                            if(regex_search(personalPathCons, ifPattern)){
                                cFinalInsertInfo += "\n  }";
                            }
                        }

                    }
                    repairRules[commonPathCons].insert(cFinalInsertInfo);
                }

            }

        }
    }

    void synPatchContract(map<string, vector<bugInfoForSye>> &allInfoForCsyn, RootNodePtr &astRootPatch) {
        //syntheis a patch contract ast root based on saved ast
        ASTNodePtr tmpContract = astRootPatch->get_field(0);
        ContractDefinitionNodePtr patchContract = dynamic_pointer_cast<ContractDefinitionNode>(tmpContract);
        string contractName = patchContract->get_name();
        ContractDefinitionNodePtr realPatchContract(new ContractDefinitionNode(contractName));
        vector<ASTNodePtr> stateVars;
        map<string, int> funName2MemberNum;
        string shadowStateVar_ree;
        map<string, bool> genShadowStateVar;
        for (int i = 0; i < patchContract->num_members(); i++) {
            auto tmp = patchContract->get_member(i);
            if(tmp->get_node_type() != NodeTypeFunctionDefinition){
                realPatchContract->add_member(tmp);
            }
            if (tmp->get_node_type() == NodeTypeVariableDeclaration ||
                tmp->get_node_type() == NodeTypeVariableDeclarationStatement) { //todo 这里应该放在处理shadow变量的位置处
                string tmpStmt = tmp->source_code(indentation);
                if (tmpStmt.find("contract") != string::npos) {
                    vector<string> str = split(tmpStmt, " ");
                    string contract_name = str[str.size() - 1];
                    string contract_insert = "contract " + contract_name + "{}";
                    patchContract->insert_text_after(contract_insert);
                }
                stateVars.push_back(tmp);
            } else if (tmp->get_node_type() == NodeTypeFunctionDefinition) {
                auto funcNode = dynamic_pointer_cast<FunctionDefinitionNode>(tmp);
                string function_name = funcNode->get_name();
                funName2MemberNum[function_name] = i;
            }
        }

        vector<int> deleteMemIndexs;
        string forPatternStr = "\\s*for\\s*\\([\\s*\\S+\\s*]+\\)\\{";
        string startWithForStr = "^\\s*for\\s*\\(";
        regex startWithForStrPattern(startWithForStr);
        regex forPattern(forPatternStr);
        for (auto iter = allInfoForCsyn.begin(); iter != allInfoForCsyn.end(); iter++) {
            string vulFunc = iter->first; //目标函数
            //cout<<"\n\n************************************Begin synthesis path for "<<vulFunc<<" ************************************\n\n";
            int vulFuncIndex = funName2MemberNum[vulFunc];
            FunctionDefinitionNodePtr patchFunction = make_shared<FunctionDefinitionNode>();
            patchFunction = dynamic_pointer_cast<FunctionDefinitionNode>(patchContract->get_member(vulFuncIndex));
            vector<bugInfoForSye> bugInfoForCsyns = iter->second;
            map<string, set<string>> repairRules;
            bool includeRee, includeUll;
            set<VariableDeclarationNodePtr> taintedStateVar;
            for (auto oneBug = bugInfoForCsyns.begin(); oneBug != bugInfoForCsyns.end(); oneBug++) {
                string bugType = get<0>(*oneBug);
                vector<int> tls = get<1>(*oneBug);
                ASTNodePtr bug_node = get<2>(*oneBug);
                string textInsert_ree = get<3>(*oneBug);
                map<string, vector<pcVDR>> pathcons = get<4>(*oneBug);
                auto tarBlockNumber = line2Block[tls[0]];
                vector<ASTNodePtr> tarBlockNodes = blocksNode[tarBlockNumber];
                string tarLineStr = sourceMapNum2Str[tls[0]];
                contractSyn(vulFunc, pathcons, bugType, tarBlockNodes, tarLineStr, bug_node,
                            textInsert_ree, stateVars, repairRules, taintedStateVar);
                if (!includeRee && bugType.find("ree") != string::npos)  {
                        includeRee = true;
                }
                if (!includeUll && bugType.find("ull") != string::npos) {
                    includeUll = true;
                }
            }

            string patchesForCfunc;
            string commonPrefix;

            for (auto onePatch = repairRules.begin(); onePatch != repairRules.end(); onePatch++) {
                string commonPrefix = onePatch->first;
                if(commonPrefix != ""){
                    if(!regex_search(commonPrefix, forPattern) && (commonPrefix.substr(commonPrefix.size() - 2, 2) != "){")){
                        patchesForCfunc += "if( " + commonPrefix + " ){\n";
                    } else if(regex_search(commonPrefix, startWithForStrPattern)){
                        patchesForCfunc += commonPrefix + "\n";
                    } else{
                        patchesForCfunc += "if( " + commonPrefix + "\n";
                    }
                }
                for (auto insertInfo = onePatch->second.begin(); insertInfo != onePatch->second.end(); insertInfo++) {
                    if(patchesForCfunc.find(*insertInfo) == string::npos){
                        patchesForCfunc += *insertInfo ;
                    }
                }
                if(commonPrefix != ""){
                    patchesForCfunc += "}\n\n";
                } else{
                    patchesForCfunc += "\n";
                }
                if(regex_search(patchesForCfunc, forPattern)){
                    patchesForCfunc += "}";
                }
            }
            if (includeRee) {
                string ifTextInfo = " if(flag[msg.sender] == false){\n";
                for (auto iter = taintedStateVar.begin(); iter != taintedStateVar.end(); iter++) {
                    VariableDeclarationNodePtr tmpNode = dynamic_pointer_cast<VariableDeclarationNode>(*iter);
                    string varName = tmpNode->get_variable_name();
                    string tmpStr = tmpNode->source_code(indentation);
                    if (!genShadowStateVar[varName]) {
                        shadowStateVar_ree += "  " + tmpStr.substr(0, tmpStr.find(varName) + varName.length()) + "1;\n";
                        genShadowStateVar[varName] = true;
                    }
                    if (tmpStr.find("map") != string::npos) {
                        ifTextInfo += "    " + varName + "1[msg.sender] = " + varName + "[msg.sender];\n";
                    } else {
                        ifTextInfo += "    " + varName + "1 = " + varName + ";\n";
                    }
                }
                ifTextInfo += "  flag[msg.sender] = true;\n  }\n";
                patchesForCfunc = ifTextInfo + patchesForCfunc;
            }
            if(includeUll && patchesForCfunc.find("msg.value")!=string::npos){
                patchFunction->set_qualifier("public payable");
            }
            else if (includeRee || includeUll || patchFunction->get_name() == "") {
                patchFunction->set_qualifier("public");
            } else {
                patchFunction->set_qualifier("public view");
            }

            auto size = patchFunction->get_function_body()->size();
            for (int j = 0; j < size; j++) {
                patchFunction->get_function_body()->delete_statement(0);
            }

            char a[] = "true";
            LiteralNodePtr literal_tmp = make_shared<LiteralNode>(a);
            literal_tmp->set_literal(a);
            ReturnNodePtr return_tmp = make_shared<ReturnNode>();
            return_tmp->set_operand(literal_tmp);
            patchFunction->get_function_body()->add_statement(return_tmp);
            patchFunction->get_function_body()->get_statement(0)->insert_text_after(patchesForCfunc);
            realPatchContract->add_member(patchFunction);
        }
        if (shadowStateVar_ree != "") {
            shadowStateVar_ree += "mapping(address=>bool) flag;\n";
            for(int singleElem = 0; singleElem < realPatchContract->num_members(); singleElem++){
                if(realPatchContract->get_member(singleElem)->get_node_type() == NodeTypeFunctionDefinition){
                    realPatchContract->get_member(singleElem)->insert_text_before(shadowStateVar_ree);
                    break;
                }
            }

        }
        astRootPatch->delete_field(0);
        astRootPatch->add_field(realPatchContract);
    }
}