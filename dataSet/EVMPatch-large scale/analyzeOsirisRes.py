#!/usr/bin/env python 
# -*- coding:utf-8 -*-
import os
import re
import csv

bugTable = '/home/fabric/Aroc/Aroc/osirisData/bugInfo.csv'

def recordBugInfos(file_path):
    table = open(bugTable, 'a', encoding='utf-8')
    csv_writer = csv.writer(table)
    #csv_writer.writerow(["bug Type", "solName", "contractName", "row", "column", "Tls"])

    with open(file_path) as json_file:
        for line in json_file:
            if "callstack" in line:
                continue
            if re.search(r'../contractSrc/0x\w+.sol', line):
                bugType = line.split(":", 1)[0][2:-1]
                if bugType not in ["underflow", "overflow"]:
                    continue
                bugLines = line.split(":", 1)[1][2:-4]
                #print("bugType: ", bugType)
                #print("bugLines: ", bugLines)
                bugList = bugLines.split("\\n../contractSrc/")
                #print(bugList)
                for bug in bugList:
                    if "function " in bug and "{" in bug:
                        continue
                    if re.search(r':', bug):
                        bugDetails = bug.split(":")
                        solName = bugDetails[0][:-4]
                        contractName = bugDetails[1]
                        row = bugDetails[2]
                        columnTls = bugDetails[3]
                        column = columnTls.split("\\n", 1)[0]
                        tl = columnTls.split("\\n", 1)[1][:-3]
                        #print(bugType, solName, contractName, row, column, tl)
                        csv_writer.writerow([bugType, solName, contractName, row, column, tl])
    json_file.close()
    table.close()


def main():
    files_path = '/home/fabric/Aroc/Aroc/osirisData/zyresults/'
    #files_path = 'C:/Users/Administrator/PycharmProjects/analyzeOsirisRes/dataSet/'
    files = os.listdir(files_path)
    for file_name in files:
        file_path = files_path + file_name
        print(file_path)
        recordBugInfos(file_path)


if __name__ == '__main__':
    main()
