#include <iostream>
#include <sys/time.h>
#include <math.h>
#include <set>
#include "nlohmann/json.hpp"
#include "../coreAnalysis/pathConsExtractor.h"
#include "../coreAnalysis/patchSynthesis.h"

using namespace Aroc;
using namespace Aroc::Utils;
struct timeval tv_start, tv_end;

int main(int argc, char** argv) {
    string testDir = "D:/ClionWorkspace/Aroc/dataSet/osirisData/TSEFirstOnOsiris/partSrc/";
    string contractListPath = testDir + "0x0a0a0a0reBugInfo.csv";
    string timeReord = testDir + "0x0a0a0a0AAAtime.csv";
    ofstream outedit(timeReord, ios::out | ios::app);
    ifstream contractList(contractListPath);
    string contractItem;
    Indentation indentation;
    while (getline(contractList, contractItem)) {
        resetGvars();
        string contractPath, patchPath, targetContract,pathCons, sol_name, ast_json_content;
        map<int, tuple<vector<int>, string>> tl2BugType;
        stringstream ast_text_stream;
        set<string> targetFuncs;
        map<string, vector<string>> parContractInfo;
        vector<bugInfo> bugInfos;
        map<string, vector<bugInfoForSye>> allInfoForCsyn;
        parseInfo(contractItem, targetContract, contractPath, patchPath, testDir, tl2BugType);
        gettimeofday(&tv_start, NULL);
        double start = tv_start.tv_sec;
        double start_us = tv_start.tv_usec;

        //build sourceMap and determine the target functions for bugs
        sourceMapBuild(contractPath, targetContract, tl2BugType, targetFuncs, bugInfos, parContractInfo);
        //generate AST and do initialization
        genAST(contractPath, sol_name, ast_json_content, ast_text_stream);

      if (ast_json_content != "") {
            //build ast rootNode of patch contracts
            nlohmann::json ast_json = nlohmann::json::parse(ast_json_content);
            ASTAnalyser ast_analyser(ast_text_stream, ast_json, true, sol_name);
            RootNodePtr astRootPatch = make_shared<RootNode>();
            RootNodePtr origin_root_node = ast_analyser.analyse(astRootPatch, targetFuncs, targetContract, parContractInfo);

            //prepare information for contract synthesis
            organizeInfo(bugInfos, ast_analyser, astRootPatch, allInfoForCsyn);

            //synthesise patch contract
            synPatchContract(allInfoForCsyn, astRootPatch);
            string patchSrc = astRootPatch->source_code(indentation);
            repalce_all_ditinct(patchSrc, "returns(bool ) ", "");
            repalce_all_ditinct(patchSrc, "return true;", "");
             cout<<"main89 Patch contract src: \n"<<patchSrc<<endl;

            //Fininshing touches (log execution time and patch contract src)
            gettimeofday(&tv_end, NULL);
            double end = tv_end.tv_sec; //秒 unix时间戳
            double end_us = tv_end.tv_usec; //us
            double endS = end + end_us * pow(10, -6);
            double startS = start + start_us * pow(10, -6);
            double time_interval = endS - startS;
            outedit <<split(contractItem, " ")[0]<<" "<<targetContract << " "  << time_interval << endl;
            ofstream ofs;
            ofs.open(patchPath, ios::out|ios::app);
            if (ofs.is_open()){
                ofs<<patchSrc;
            }
        }
    }
}


