//
// Created by Administrator on 2021/5/27.
//

#ifndef AROC_UTILS_H
#define AROC_UTILS_H
using namespace std;
#include <algorithm>
#include <cstdlib>
#include <iostream>
#include <list>
#include <map>
#include <string>
#include <cstring>
#include <vector>
#include <set>
#include <sstream>
#include "./globalVar.h"
#include "nlohmann_json/single_include/nlohmann/json.hpp"
#include <regex>
using namespace std;
namespace Aroc{
    namespace Utils{
        typedef tuple<vector<int>, string, string> bugInfo;
        bool containTaintOp(string currentSTText);

        bool containAriOp(string currentSTText);

        bool containLetter(string s);

        bool isLetter(char c);

        bool containAssert(string s);

        void repalce_all_ditinct(string& str,const string& old_value,const string& new_value);

        void repalce_all_ditinct_variable(string& str,const string& old_value,const string& new_value);

        void remove_escapesALL(string &s);

        void debug_info(const string& _info);

        // trim string from left side
        void ltrim(string& _str);

        // trim string from right side
        void rtrim(string& _str);

        // trim from both ends (in place)
        void trim(string& _str);

        // trim from left side but no overwrite
        string ltrim_copy(const string& _str);

        // trim from right side but no overwrite
        string rtrim_copy(const string& _str);

        // trim from both sides but no overwrite
        string trim_copy(const string& _str);

        vector<string> split(const string& _str, string _delimiter);

        // Get the _index[th] element from a string split by _c
        string retrieve_string_element(const string& _str, const unsigned int& _index, const string& _delimiter);

        string substr_by_edge(const string& _str, const string& _left, const string& _right);

        //from https://stackoverflow.com/questions/3418231/replace-part-of-a-string-with-another-string
        void str_replace_all(string& _str, const string& _from, const string& _to);

        map<string, string> parse_visitor_args(const string& _args);

        void sourceMapBuild(string& contractPath, string targetContract, map<int, tuple<vector<int>, string>>& tl2BugType, set<string>& targetFuncs, vector<bugInfo>& bugInfos, map<string, vector<string>> &parContractInfo);

        void genAST(string &fPath, string& sol_name, string& ast_json_content, stringstream& ast_text_stream);

        void bubbleSort(vector<int>& targetBlocks);

        string longestCommonPrefix(string& path, string& comparePath);

        void parseInfo(string& contractItem, string& targetContract, string& contractPath, string& patchPath, string& testDir, map<int, tuple<vector<int>, string>>& tl2BugType);
        }
}
#endif //AROC_UTILS_H
