//
// Created by Administrator on 2021/6/18.
//
#include <string>
#include <fstream>
#include <sstream>
#include <iostream>
#include <libUtils/Utils.h>
using namespace std;
using namespace  Aroc::Utils;
void analyzeBugInfoCSV() {
    string testDir = "D:/ClionWorkspace/Aroc_SIF/dataSets/";
    string file_path = "bugInfo.csv";
    string outfile_path = "reBugInfo.csv";
    ofstream outFile;
    outFile.open(outfile_path, ios::out);
    ifstream infile(file_path, ios::in);
    string line;
    string pSolName, pcontract;
    string infoKept;
    while (getline(infile, line)){
      istringstream ss(line);
      string str;
      getline(ss, str, ',');
      string bugType = str;
      getline(ss, str, ',');
      string solName = str;
      getline(ss, str, ',');
      string targetContract = str;
      getline(ss, str, ',');
      string tl = str;
      getline(ss, str, ',');
      string tlSrc = str;
      cout<<"bugType: "<<bugType<<", solName: "<<solName<<", targetContract: "<<targetContract<<", tl: "<<tl<<", tlSrc: "<<tlSrc<<endl;

      if(pSolName == solName && targetContract == pcontract ){
            infoKept += tl + "/ari ";
      }
      if(pSolName != solName || targetContract != pcontract){
          infoKept += "\n"; cout<<"current written info: "<<infoKept<<endl;
          outFile << infoKept;
          infoKept = targetContract + " ";
          pSolName = solName;
          pcontract = targetContract;
      }
    }
    outFile.close();
}

/*
int main(){
    string testDir = "D:/ClionWorkspace/Aroc_SIF/dataSets/";
    string file_path = testDir + "bugInfo.csv";
    string outfile_path = testDir + "reBugInfo.csv";
    ofstream outFile;
    outFile.open(outfile_path, ios::out);
    ifstream infile(file_path, ios::in);
    string line;
    string pSolName = "0x1ae00b00b9187e61d0417d4e336625fc343550e2", pcontract = "gxtoken";
    string infoKept = pSolName + " " + pcontract + " ";
    while (getline(infile, line)){
        istringstream ss(line);
        string str;
        getline(ss, str, ',');
        string bugType = str;
        getline(ss, str, ',');
        string solName = str;
        getline(ss, str, ',');
        string targetContract = str;
        getline(ss, str, ',');
        string tl = str;
        getline(ss, str, ',');
        string tlSrc = str;
        cout<<"bugType: "<<bugType<<", solName: "<<solName<<", targetContract: "<<targetContract<<", tl: "<<tl<<", tlSrc: "<<tlSrc<<endl;

        if(pSolName == solName && targetContract == pcontract ){
            infoKept += tl + "/ari ";
        }
        if(pSolName != solName || targetContract != pcontract){
            infoKept += "\n"; cout<<"current written info: "<<infoKept<<endl;
            outFile << infoKept;
            infoKept = solName + " " + targetContract + " " + tl + "/ari ";
            pSolName = solName;
            pcontract = targetContract;
        }
    }
    outFile.close();
}*/
