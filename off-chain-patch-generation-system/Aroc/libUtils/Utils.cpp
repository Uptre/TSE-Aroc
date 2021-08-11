#include "Utils.h"
namespace Aroc{
    namespace Utils{
        bool containAriOp(string currentSTText){
            string *taintOp = new string[8]{"+", "-", "*", "/",  "+=", "-=", "/=", "*="};
            for (int j=0; j<8; j++){
                if(currentSTText.find(taintOp[j]) != string::npos){
                    return true;
                }
            }
            return false;
        }

        bool containTaintOp(string currentSTText){
            string *taintOp = new string[15]{"+", "-", "*", "/", "=", "+=", "-=", "/=", "*=", "==", ">", "<", ">=", "<=", "!="};
            for (int j=0; j<15; j++){
                if(currentSTText.find(taintOp[j]) != string::npos){
                    return true;
                }
            }
            return false;
        }

        bool containAssert(string s){
            if(s.find("require") != string::npos || s.find("assert") != string::npos){
                return true;
            }else{
                return false;
            }
        }


        bool containLetter(string s){
            repalce_all_ditinct(s, "ether", "");
            repalce_all_ditinct(s, "wei", "");
            for(auto i=0; i<s.size(); i++){
                if (s[i]>='a' && s[i] <= 'z' || s[i]>='A' && s[i] <= 'Z'){
                    return true;
                }
            }
            return false;
        }

        bool isLetter(char c){
            if (c>='a' && c <= 'z' || c>='A' && c<= 'Z'){
                return true;
            }
            return false;
        }

        void repalce_all_ditinct_variable(string& str,const string& old_value,const string& new_value)
        {
            for(string::size_type pos(0);pos!=string::npos;pos+=new_value.length()) {
                if((pos=str.find(old_value,pos))!=string::npos) {
                    int endPos = pos + old_value.length();
                    if ((pos <= 1 || pos > 1 && !isLetter(str[pos - 1])) &&
                        (endPos >= str.size() - 1 || endPos < str.size() - 1 && !isLetter(str[endPos]))) {
                        str.replace(pos, old_value.length(), new_value);
                    }
                }
                else break;
            }
        }

        void repalce_all_ditinct(string& str,const string& old_value,const string& new_value){
            for(string::size_type pos(0);pos!=string::npos;pos+=new_value.length()) {
                if ((pos = str.find(old_value, pos)) != string::npos) {
                    str.replace(pos, old_value.length(), new_value);
                }
                else break;
            }
        }


        void remove_escapesALL(string &s){
            repalce_all_ditinct(s, "    ", "");
            int index = 0;
            if( !s.empty())
            {
                while( (index = s.find(" ",index)) != string::npos)
                {
                    s.erase(index,1);
                }
            }

        }

        void debug_info(const string& _info) {
            if (getenv("Aroc_DEBUG") != nullptr) {
                cerr << "[Aroc_DEBUG_INFO]" << _info << "\n";
            }
        }

        // trim string from left side
        // from https://stackoverflow.com/questions/216823/whats-the-best-way-to-trim-stdstring
        void ltrim(string& _str) {
            _str.erase(_str.begin(), find_if(_str.begin(), _str.end(), [](int ch) {
                return !isspace(ch);
            }));
        }

        // trim string from right side
        // from https://stackoverflow.com/questions/216823/whats-the-best-way-to-trim-stdstring
        void rtrim(string& _str) {
            _str.erase(find_if(_str.rbegin(), _str.rend(), [](int ch) {
                return !isspace(ch);
            }).base(), _str.end());
        }

        // trim from both ends (in place)
        // from https://stackoverflow.com/questions/216823/whats-the-best-way-to-trim-stdstring
        void trim(string& _str) {
            ltrim(_str);
            rtrim(_str);
        }

        // trim from left side but no overwrite
        // from https://stackoverflow.com/questions/216823/whats-the-best-way-to-trim-stdstring
        string ltrim_copy(const string& _str) {
            return _str.substr(_str.find_first_not_of(' '));
        }

        // trim from right side but no overwrite
        // from https://stackoverflow.com/questions/216823/whats-the-best-way-to-trim-stdstring
        string rtrim_copy(const string& _str) {
            return _str.substr(0, _str.find_last_not_of(' ') + 1);
        }

        // trim from both sides but no overwrite
        // from https://stackoverflow.com/questions/216823/whats-the-best-way-to-trim-stdstring
        string trim_copy(const string& _str) {
            return _str.substr(_str.find_first_not_of(' '), _str.find_last_not_of(' ') - _str.find_first_not_of(' ') + 1);
        }

        //from https://stackoverflow.com/questions/14265581/parse-split-a-string-in-c-using-string-delimiter-standard-c
        vector<string> split(const string& _str, string _delimiter) {
            vector<string> result;
            string str = string(_str);
            size_t pos = 0;
            string token;
            while ((pos = str.find(_delimiter)) != string::npos) {
                token = str.substr(0, pos);
                result.push_back(token);
                str.erase(0, pos + _delimiter.length());
            }
            result.push_back(str);
            return result;
        }

        string retrieve_string_element(const string& _str, const unsigned int& _index, const string& _delimiter) {
            string new_str= trim_copy(_str);
            vector<string> v_str = split(new_str, _delimiter);
            if (_index < v_str.size()) {
                return v_str[_index];
            } else {
                return "";
            }
        }

        string substr_by_edge(const string& _str, const string& _left, const string& _right) {
            auto left = _str.find(_left);
            auto right = _str.rfind(_right);
            if (left == string::npos || right == string::npos) {
                return "";
            } else {
                return _str.substr(_left.length() + left, right - _left.length() - left);
            }
        }

        //from https://stackoverflow.com/questions/3418231/replace-part-of-a-string-with-another-string
        void str_replace_all(string& _str, const string& _from, const string& _to) {
            if(_from.empty()) {
                return;
            }
            size_t start_pos = 0;
            while((start_pos = _str.find(_from, start_pos)) != string::npos) {
                _str.replace(start_pos, _from.length(), _to);
                start_pos += _to.length(); // In case 'to' contains 'from', like replacing 'x' with 'yx'
            }
        }

        map<string, string> parse_visitor_args(const string& _args) {
            auto values = split(_args, " ");
            map<string, string> result;
            for (auto it = values.begin(); it != values.end(); ++it) {
                auto pair = split(*it, "=");
                if (pair.size() != 2) {
                    continue;
                }
                result[pair[0]] = pair[1];
            }
            return result;
        }

        void genAST(string &fPath, string& sol_name, string& ast_json_content, stringstream& ast_text_stream) {
            string fPathPrefix = split(fPath, ".")[0];
            string ASTtxtName = fPathPrefix + ".ast";
            string ASTjsonName = fPathPrefix + ".json";

            string ASTtxtCom = "solc --ast " + fPath + ">>" + ASTtxtName;
            string ASTjsonCom = "solc --ast-compact-json " + fPath + ">>" + ASTjsonName;
            fstream asttxt, astjson;
            asttxt.open(ASTtxtName, ios::in);
            astjson.open(ASTjsonName, ios::in);

            if(!asttxt){
                system(ASTtxtCom.c_str());
            } else {
                int ch = asttxt.get();
                if(asttxt.eof() || ch == EOF) { system(ASTtxtCom.c_str()); }
            }
            if(!astjson){
                system(ASTjsonCom.c_str());
            } else {
                int ch = astjson.get();
                if(astjson.eof() || ch == EOF) { system(ASTjsonCom.c_str()); }
            }

            //read the AST file
            string new_line;
            ifstream ast_text_file_stream(ASTtxtName), ast_json_file_stream(ASTjsonName);
            while (getline(ast_text_file_stream, new_line)) {
                ast_text_stream << new_line << "\n";
            }

            while (getline(ast_json_file_stream, new_line)) {
                if (new_line.find(".sol =======") != string::npos) {
                    sol_name = Aroc::Utils::substr_by_edge(new_line, "======= ", " =======");
                    break;
                }
            }
            while (getline(ast_json_file_stream, new_line)) {

                if (new_line.find(".sol =======") == string::npos) {
                    ast_json_content = ast_json_content + new_line + "\n";
                } else {
                    nlohmann::json ast_json = nlohmann::json::parse(ast_json_content);
                    sol_name = Aroc::Utils::substr_by_edge(new_line, "", "");
                    ast_json_content = "";
                }
            }
            ast_json_file_stream.close();
        }

        void bubbleSort(vector<int>& targetBlocks) {
            int tmp;
            if(targetBlocks.size() > 1){
                for (auto i = targetBlocks.begin(); i != targetBlocks.end(); i++){
                    for (auto j = targetBlocks.begin(); j != targetBlocks.end();){
                        if (*j < *(j+1)) {
                            tmp = *j;
                            *j = *(j+1);
                            *(j+1) = tmp;
                            j++;
                        } else if(*j == *(j+1))  {
                            j = targetBlocks.erase(j);
                        } else {
                            j++;
                        }
                    }
                }
            }
        }

        string longestCommonPrefix(string& path, string& comparePath){
            int len1 = path.size();
            int len2 = comparePath.size();
            int len = len1 < len2 ? len1:len2;
            remove_escapesALL(path);
            remove_escapesALL(comparePath);
            for(int i=0; i<len; i++){
                if(path[i] != comparePath[i]){
                    return path.substr(0, i);
                }
            }
            return path.substr(0,len);
        }

        void sourceMapBuild(string& contractPath, string targetContract, map<int, tuple<vector<int>, string>>& tl2BugType, set<string>& targetFuncs, vector<bugInfo>& bugInfos, map<string, vector<string>>& parContractInfo){
            ifstream contract(contractPath);
            int lineCount = 0;
            string nextline, curFunc, curContract;
            bool inTargetContract;
            string ifPatternstr = "^\\s*if\\s*(\\s*\\S+\\s*)";
            regex ifPattern(ifPatternstr);
            string forPatternStr = "^\\s*for\\s*\\(";
            regex forPattern(forPatternStr);

            while (getline(contract, nextline)) {
                lineCount++;

                int commentLoc = nextline.find("//");
                if(commentLoc != string::npos){
                    nextline = nextline.substr(0, commentLoc);
                }else{
                    commentLoc = nextline.find("/*");
                    if(commentLoc != string::npos){
                        nextline = nextline.substr(0, commentLoc);
                    }
                }
                if(!tl2BugType.empty() && nextline.find("//") == string::npos && nextline.find("/*") == string::npos && nextline.find("function ") != string::npos) {
                    auto left = nextline.find("function ");
                    auto right = nextline.find("(");
                    curFunc = nextline.substr(9 + left, right - 9 - left);
                    remove_escapesALL(curFunc);
                }
                if (regex_search(nextline, ifPattern)) {
                    nextline = substr_by_edge(nextline, "(", ")");
                }
                bool contractFlag = nextline.find("contract ") != string::npos, libFlag = nextline.find("library ") != string::npos;
               if ((contractFlag || libFlag )  && nextline.find("{") != string::npos) {
                   if(contractFlag){
                       auto left = nextline.find("contract ");
                       if (nextline.find(" is") == string::npos) {
                           auto right = nextline.find("{");
                           curContract = nextline.substr(9 + left, right - 9 - left);
                       } else {
                           auto right = nextline.find(" is");
                           curContract = nextline.substr(9 + left, right - 9 - left);
                       }
                   } else if(libFlag){
                       auto left = nextline.find("library ");
                       auto right = nextline.find("{");
                       curContract = nextline.substr(8 + left, right - 8 - left);
                   }

                    remove_escapesALL(curContract);
                    if(targetContract == curContract) {
                        inTargetContract = true;
                    }
                }

                bool reachTargetLine = false;
                if(!tl2BugType.empty()){
                    vector<map<int, tuple<vector<int>, string>>::iterator> tlsRecorded;
                    for (auto tl = tl2BugType.begin(); tl != tl2BugType.end(); tl++){
                        if (lineCount == tl->first) {
                            reachTargetLine = true;
                            if(inTargetContract){
                                targetFuncs.insert(curFunc);
                            } else{
                                parContractInfo[curContract].push_back(curFunc);
                            }

                            auto tls = get<0>(tl->second);
                            auto bugtype = get<1>(tl->second);
                            bugInfos.push_back(bugInfo(tls, bugtype, curFunc));
                            tlsRecorded.push_back(tl);
                            break;
                        }
                    }
                    for (auto iter = tlsRecorded.begin(); iter != tlsRecorded.end(); iter++){
                        tl2BugType.erase(*iter);
                    }
                }
                remove_escapesALL(nextline);
                sourceMap[nextline] = lineCount;
                sourceMapNum2Str[lineCount] = nextline;
                if (regex_search(nextline, forPattern)) {
                    nextline = substr_by_edge(nextline, "(", ")");
                    auto forStrs =split(nextline, ";");
                    sourceMap[forStrs[0] + ";"] = lineCount;
                    sourceMap[forStrs[1] + ";"] = lineCount;
                    sourceMap[forStrs[2] + ";"] = lineCount;
                }
            }
        }

        void parseInfo(string& contractItem, string& targetContract, string& contractPath, string& patchPath, string& testDir, map<int, tuple<vector<int>, string>>& tl2BugType){
            auto bugInfosStr = split(contractItem, " ");
            targetContract = bugInfosStr[1];
            string sol_name = bugInfosStr[0];
            contractPath = testDir + sol_name + ".sol";
            patchPath = testDir + sol_name + targetContract+ ".sol";
            for(int i=2; i < bugInfosStr.size(); i++){
                string singleBug = bugInfosStr[i];
                if(singleBug.find("/") == string::npos){
                    break;
                }
                string tls = split(singleBug, "/")[0];
                string bug = split(singleBug, "/")[1];
                vector<string> tlsArray = split(tls, ",");
                vector<int> tlsInt;
                for(auto iter = tlsArray.begin(); iter != tlsArray.end(); iter++){
                    tlsInt.push_back(atoi((*iter).c_str()));
                }
                tl2BugType[tlsInt[0]] = partBugInfo(tlsInt, bug);
            }
        }
    }
}
