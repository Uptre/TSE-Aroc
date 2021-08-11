
#include "ASTVisitor.h"

namespace Aroc {

    int lastBlockNo;
    int mostRecentIDInCodeBlocks;
    map<int, int> trueEdges;
    map<int, int> falseEdges;
    string functionName;
    map<int, bool> isWaitingBlock;
    map<int, bool> isUnlinkedBlock;
    list<int> conditions;
    list<int> noFalseBranch;
    bool endBlockNeeded;
    int branchDepth;

    int handle_stmt(ASTNodePtr _node);
    int handle_block(BlockNodePtr _block);

    bool isnoFalseBranch(const int& _id){
        if (find(noFalseBranch.begin(), noFalseBranch.end(), _id) == noFalseBranch.end()) {
            return false;
        } else {
            return true;
        }
    }

    bool isCondition(const int& _id) {
        if (find(conditions.begin(), conditions.end(), _id) == conditions.end()) {
            return false;
        } else {
            return true;
        }
    }

    bool conditionHasBranch(const int& _id, const bool& _branch) {
        if (_branch) {
            if (trueEdges.find(_id) != trueEdges.end()) {
                return true;
            } else {
                return false;
            }
        } else {
            if (falseEdges.find(_id) != falseEdges.end()) {
                return true;
            } else {
                return false;
            }
        }
    }

    void linkEdge(const int& _from, const int& _to, const bool& _edgeType = true) {
        if (conditionHasBranch(_from, _edgeType)) {
            return;
        }
        if (_edgeType) {
            trueEdges[_from] = _to;
        } else {
            falseEdges[_from] = _to;
        }
    }

    void before(string arg) {
        lastBlockNo = 0;
        functionName = arg;
        endBlockNeeded = false;
        branchDepth = 0;
    }

    int finishPreviousBlock(const string& _new_text, vector<ASTNodePtr> nodeInfo) {
        int previousFinishedNO = lastBlockNo;
        stringstream stringbuilder, blockText;
        string next_line;
        stringbuilder << "[" << previousFinishedNO << "]\n" << _new_text;
        blocks[lastBlockNo++] = stringbuilder.str();
        blockText<<_new_text;
        blocksNode[previousFinishedNO] = nodeInfo;
        int lastline = 0;
        while (getline(blockText, next_line)){
            remove_escapesALL(next_line);
            int line = sourceMap[next_line];
            if (line != 0 && (line2Block[line] == 0 || line < lastline)){
                line2Block[line] = previousFinishedNO;
            }
            lastline = line;
        }
        return previousFinishedNO;
    }

    int handle_stmt(ASTNodePtr _node) {
        NodeType nodeType = _node->get_node_type();
        Indentation empty(0);
        int thisStmtID = lastBlockNo - 1;
        Indentation indentation;
        if (nodeType == NodeTypeExpressionStatement){
            ExpressionStatementNodePtr expre = static_pointer_cast<ExpressionStatementNode>(_node);
            string expre_source = expre->source_code(empty);
            string rastmt = expre_source;
            vector<ASTNodePtr> raNode;
            raNode.push_back(_node);
            int conditionNo_expr = finishPreviousBlock(rastmt, raNode);
            thisStmtID = conditionNo_expr;
            conditions.push_back(conditionNo_expr);
            noFalseBranch.push_back(conditionNo_expr);
            int thenID = conditionNo_expr + 1;
            linkEdge(conditionNo_expr, thenID);
            branchDepth++;
        }else if (nodeType == NodeTypeIfStatement) {
            IfStatementNodePtr ifstmt = static_pointer_cast<IfStatementNode>(_node);
            string conditionText = ifstmt->get_condition()->source_code(empty);
            vector<ASTNodePtr> conditionNode;
            conditionNode.push_back(ifstmt->get_condition());
            int conditionNo = finishPreviousBlock(conditionText, conditionNode);
            thisStmtID = conditionNo;
            conditions.push_back(conditionNo);
            int thenID = conditionNo + 1;
            auto thenstmt = ifstmt->get_then();
            branchDepth++;
            if (thenstmt->get_node_type() == NodeTypeBlockNode) {
                BlockNodePtr thenblock = static_pointer_cast<BlockNode>(thenstmt);
                thenID = handle_block(thenblock);
            } else {
                thenID = handle_stmt(thenstmt);
            }
            branchDepth--;
            linkEdge(conditionNo, thenID);
            auto elsestmt = ifstmt->get_else();
            if (elsestmt != nullptr) {
                int elseID = lastBlockNo;
                branchDepth++;
                if (elsestmt->get_node_type() == NodeTypeBlockNode) {
                    BlockNodePtr elseblock = static_pointer_cast<BlockNode>(elsestmt);
                    elseID = handle_block(elseblock);
                } else {
                    elseID = handle_stmt(elsestmt);
                }
                branchDepth--;
                linkEdge(conditionNo, elseID, false);
            } else {
            }
        } else if (nodeType == NodeTypeForStatement) {
            ForStatementNodePtr forstmt = static_pointer_cast<ForStatementNode>(_node);
            string initText = forstmt->get_init()->source_code(empty);
            vector<ASTNodePtr> initNode;
            initNode.push_back(forstmt->get_init());
            int initNo = finishPreviousBlock(initText, initNode);
            thisStmtID = initNo;
            string conditionText = forstmt->get_condition()->source_code(empty);
            vector<ASTNodePtr> conditionNode;
            conditionNode.push_back(forstmt->get_condition());
            int conditionNo = finishPreviousBlock(conditionText, conditionNode);
            linkEdge(initNo, conditionNo);
            conditions.push_back(conditionNo);
            auto loopbody = forstmt->get_body();
            int bodyFirstID = lastBlockNo - 1;
            int bodyLastID = lastBlockNo - 1;
            if (loopbody->get_node_type() == NodeTypeBlockNode) {
                BlockNodePtr loopbodyblock = static_pointer_cast<BlockNode>(loopbody);
                bodyFirstID = handle_block(loopbodyblock);
                bodyLastID = mostRecentIDInCodeBlocks;
            } else {
                bodyFirstID = handle_stmt(loopbody);
                bodyLastID = bodyFirstID;
            }
            string incrementText = forstmt->get_increment()->source_code(empty);
            vector<ASTNodePtr> incrementNode;
            incrementNode.push_back(forstmt->get_increment());
            int incrementNo = finishPreviousBlock(incrementText, incrementNode);
            linkEdge(bodyLastID, incrementNo);
            linkEdge(incrementNo, conditionNo);
            linkEdge(conditionNo, bodyFirstID);
            if (branchDepth != 1) {
                linkEdge(conditionNo, incrementNo + 1, false);
            }
        } else if (nodeType == NodeTypeDoWhileStatement) {
            DoWhileStatementNodePtr doStmt = static_pointer_cast<DoWhileStatementNode>(_node);
            string conditionText = doStmt->get_condition()->source_code(empty);
            vector<ASTNodePtr> conditionNode;
            conditionNode.push_back(doStmt->get_condition());
            auto loopbody = doStmt->get_loop_body();
            int bodyFirstID = lastBlockNo - 1;
            int bodyLastID = lastBlockNo - 1;
            if (loopbody->get_node_type() == NodeTypeBlockNode) {
                BlockNodePtr loopbodyblock = static_pointer_cast<BlockNode>(loopbody);
                bodyFirstID = handle_block(loopbodyblock);
                bodyLastID = mostRecentIDInCodeBlocks;
            } else {
                bodyFirstID = handle_stmt(loopbody);
                bodyLastID = bodyFirstID;
            }
            thisStmtID = bodyFirstID;
            int conditionNo = finishPreviousBlock(conditionText, conditionNode);
            conditions.push_back(conditionNo);
            linkEdge(bodyLastID, conditionNo);
            linkEdge(conditionNo, bodyFirstID);
            if (branchDepth != 1) {
                linkEdge(conditionNo, conditionNo + 1, false);
            }
        } else if (nodeType == NodeTypeWhileStatement) {
            WhileStatementNodePtr whileStmt = static_pointer_cast<WhileStatementNode>(_node);
            string conditionText = whileStmt->get_condition()->source_code(empty);
            vector<ASTNodePtr> conditionNode;
            conditionNode.push_back(whileStmt->get_condition());
            int conditionNo = finishPreviousBlock(conditionText, conditionNode);
            thisStmtID = conditionNo;
            conditions.push_back(conditionNo);
            auto loopbody = whileStmt->get_loop_body();
            int bodyFirstID = lastBlockNo - 1;
            int bodyLastID = lastBlockNo - 1;
            if (loopbody->get_node_type() == NodeTypeBlockNode) {
                BlockNodePtr loopbodyblock = static_pointer_cast<BlockNode>(loopbody);
                bodyFirstID = handle_block(loopbodyblock);
                bodyLastID = mostRecentIDInCodeBlocks;
            } else {
                bodyFirstID = handle_stmt(loopbody);
                bodyLastID = bodyFirstID;
            }
            linkEdge(bodyLastID, conditionNo);
            linkEdge(conditionNo, bodyFirstID);
            if (branchDepth != 1) {
                linkEdge(conditionNo, bodyLastID + 1, false);
            }
        } else {
            vector<ASTNodePtr> emptyNode;
            emptyNode.push_back(_node);
            string emptyText = _node->source_code(empty);
            thisStmtID = finishPreviousBlock(emptyText, emptyNode);
        }
        return thisStmtID;
    }

    int handle_block(BlockNodePtr _block) {
        Indentation empty(0);
        int mostRecentID = lastBlockNo - 1;
        int thisBlockFirstID = -100;
        int previousFinishedID = -100;
        for (int i = 0; i < _block->num_statements(); ++i) {
            ASTNodePtr currentNode;
            NodeType nodeType;
            string currentBlockText = "";
            vector<ASTNodePtr> currentBlockNode;
            while (i < _block->num_statements()) {
                currentNode = _block->get_statement(i);
                nodeType = currentNode->get_node_type();
                if (nodeType != NodeTypeIfStatement && nodeType != NodeTypeWhileStatement && nodeType != NodeTypeDoWhileStatement && nodeType != NodeTypeForStatement && (not (nodeType == NodeTypeExpressionStatement && (currentNode->source_code(empty).find("require") != string::npos || currentNode->source_code(empty).find("assert") != string::npos)))) {
                    currentBlockText = currentBlockText + currentNode->source_code(empty) + "\n";
                    currentBlockNode.push_back(currentNode);
                    i++;
                } else {
                    break;
                }
            }

            if (currentBlockText != "" || _block->num_statements() == 0) {
                mostRecentID = finishPreviousBlock(currentBlockText, currentBlockNode);
                previousFinishedID = mostRecentID;
                if (thisBlockFirstID == -100) {
                    thisBlockFirstID = mostRecentID;
                }
            }
            if(nodeType == NodeTypeExpressionStatement && (currentNode->source_code(empty).find("require") != string::npos || currentNode->source_code(empty).find("assert") != string::npos)){
                mostRecentID = handle_stmt(currentNode);
                if (previousFinishedID != -100 && find(conditions.begin(), conditions.end(), previousFinishedID) == conditions.end()) {
                    linkEdge(previousFinishedID, mostRecentID);
                    previousFinishedID = mostRecentID;
                }
                if (thisBlockFirstID == -100) {
                    thisBlockFirstID = mostRecentID;
                }
            } else if (nodeType == NodeTypeIfStatement) {
                mostRecentID = handle_stmt(currentNode);
                if (previousFinishedID != -100 && find(conditions.begin(), conditions.end(), previousFinishedID) == conditions.end()) {
                    linkEdge(previousFinishedID, mostRecentID);
                    previousFinishedID = mostRecentID;
                }
                if (thisBlockFirstID == -100) {
                    thisBlockFirstID = mostRecentID;
                }
            } else if (nodeType == NodeTypeForStatement) {
                mostRecentID = handle_stmt(currentNode);
                if (previousFinishedID != -100) {
                    linkEdge(previousFinishedID, mostRecentID);
                    previousFinishedID = mostRecentID;
                }
                if (thisBlockFirstID == -100) {
                    thisBlockFirstID = mostRecentID;
                }
            } else if (nodeType == NodeTypeDoWhileStatement) {
                mostRecentID = handle_stmt(currentNode);
                if (previousFinishedID != -100) {
                    linkEdge(previousFinishedID, mostRecentID);
                    previousFinishedID = mostRecentID;
                }
                if (thisBlockFirstID == -100) {
                    thisBlockFirstID = mostRecentID;
                }
            } else if (nodeType == NodeTypeWhileStatement) {
                mostRecentID = handle_stmt(currentNode);
                if (previousFinishedID != -100 && find(conditions.begin(), conditions.end(), previousFinishedID) == conditions.end()) {
                    linkEdge(previousFinishedID, mostRecentID);
                    previousFinishedID = mostRecentID;
                }
                if (thisBlockFirstID == -100) {
                    thisBlockFirstID = mostRecentID;
                }
            }

        }
        mostRecentIDInCodeBlocks = mostRecentID;
        return thisBlockFirstID;
    }


    void visit(ASTNode* node) {
        auto currentNodeType = node->get_node_type();
        if (currentNodeType == NodeTypeFunctionDefinition) {
            FunctionDefinitionNode* fd = (FunctionDefinitionNode*) node;
            if (fd->get_name() == functionName) {
                Indentation empty(0);
                auto block = fd->get_function_body();
                string parameters = fd->get_name() + fd->get_params()->source_code(empty);
                vector<ASTNodePtr> paramNode;
                paramNode.push_back(fd->get_params());
                int parametersBlockID = finishPreviousBlock(parameters, paramNode);
                handle_block(block);
                linkEdge(parametersBlockID, parametersBlockID + 1);
                auto lastnode = block->get_statement(block->num_statements() - 1);
                string lastnode_src = lastnode->source_code(empty);
                auto lastNodeType = lastnode->get_node_type();
                if (lastNodeType == NodeTypeIfStatement || lastNodeType == NodeTypeWhileStatement || lastNodeType == NodeTypeDoWhileStatement || lastNodeType == NodeTypeForStatement || (lastNodeType == NodeTypeExpressionStatement && (lastnode_src.find("require(")!=string::npos || lastnode_src.find("assert(")!=string::npos))){
                    blocks[lastBlockNo++] = "END";
                }
            }

        }
    }

    void after() {
        ofstream output("Aroc_tmp_cfg_000.gv");
        stringstream cfgstream;
        cfgstream << "digraph CFG {\n";
        map<int,bool> subContract;
        map<int,bool> throwBlock;
        for (auto it = blocks.begin(); it != blocks.end(); ++it) {
            string shape = "shape=\"box\",style=\"rounded\"";
            if (find(conditions.begin(), conditions.end(), it->first) != conditions.end()) {
                shape = "shape=\"diamond\"";
            }
            isWaitingBlock[it->first] = true;
            isUnlinkedBlock[it->first] = true;
            cfgstream << "nd_" << it->first << " [" << shape << ",labelloc=l, label=\"" << it->second << "\"];\n";
            if(it->second.find("throw") != string::npos || it->second.find("revert") != string::npos|| it->second.find("continue") != string::npos){
                throwBlock[it->first] = true;
            }
            subContract[it->first] = true;
        }
        for (auto it = trueEdges.begin(); it != trueEdges.end(); ++it) {
            if (find(conditions.begin(), conditions.end(), it->first) != conditions.end()) {
                cfgstream << "    nd_" << it->first << " -> nd_" << it->second << "[label=\"True\"];\n";
                isUnlinkedBlock[it->second] = false;
                if (!throwBlock[it->first] && subContract[it->first] && subContract[it->second]) {
                    blockRelation tmpR(it->first, 1);
                    cfgBlock[it->second].push_back(tmpR);
                }
            }
            else {//专门用来连接从表达式语句到条件语句的
                cfgstream << "    nd_" << it->first << " -> nd_" << it->second << ";\n";
                isWaitingBlock[it->first] = false;
                isUnlinkedBlock[it->second] = false;
                if (!throwBlock[it->first] && subContract[it->first] && subContract[it->second]) {
                    blockRelation tmpR(it->first, 0);
                    cfgBlock[it->second].push_back(tmpR);
                }
            }
        }
        for (auto it = falseEdges.begin(); it != falseEdges.end(); ++it) {
            if(!isnoFalseBranch(it->first)){
                cfgstream << "    nd_" << it->first << " -> nd_" << it->second << "[label=\"False\"];\n";
                if(!throwBlock[it->first] && subContract[it->first] && subContract[it->second]) {
                    blockRelation tmpR(it->first, 2);
                    cfgBlock[it->second].push_back(tmpR);
                }
            }
            isWaitingBlock[it->first] = false;
            isUnlinkedBlock[it->second] = false;
        }
        isWaitingBlock[isWaitingBlock.size()-1] = false;

        for (auto it = isWaitingBlock.begin(); it != isWaitingBlock.end(); ++it) {
            if (it->second) {
                int id = it->first + 1;
                while (id < blocks.size() && !isUnlinkedBlock[id]) {
                    id++;
                }
                if (id >= blocks.size()) id = blocks.size()-1;
                if (!isnoFalseBranch(it->first)){
                    if (isCondition(it->first)){
                        cfgstream << "    nd_" << it->first << " -> nd_" << id << "[label=\"False\"];\n";
                        if(!throwBlock[it->first] && subContract[it->first] && subContract[id]) {
                            blockRelation tmpR(it->first, 2);
                            cfgBlock[id].push_back(tmpR);
                        }
                    } else {
                        if(blocks[it->first].find("return") == string::npos && blocks[it->first].find("throw") == string::npos){
                            cfgstream << "nd_" << it->first << " -> nd_" << id << ";\n";
                            if(!throwBlock[it->first] && subContract[it->first] && subContract[id]) {
                                blockRelation tmpR(it->first, 0);
                                cfgBlock[id].push_back(tmpR);
                            }
                        }else{
                            cfgstream << "nd_" << it->first << " -> nd_" << blocks.size()-1 << ";\n";
                            if(!throwBlock[it->first] && subContract[it->first] && subContract[blocks.size()-1]) {
                                blockRelation tmpR(it->first, 0);
                                cfgBlock[blocks.size()-1].push_back(tmpR);
                            }
                        }

                    }
                }
            }
        }

        cfgstream << "}\n";
        output << cfgstream.str();
        output.close();
    }

}


