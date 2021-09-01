# TSE-Aroc
The repair framework for on-chain vulnerable Ethereum smart contracts.
Any questions with the tool, please contact zeliwang@hust.edu.cn

# Install off-chain patch generation system
  ## Windows
  <ul>
   <li>remove cmake-build-debug/ and .idea/ from ./TSE-Aroc/off-chain-patch-generation-system/Aroc/.  </li>  
   <li>Download and install Clion (https://www.jetbrains.com/clion/download/#section=windows).  </li>    
   <li>Open Clion: File -> New CMake Project from Sources... -> ./TSE-Aroc/off-chain-patch-generation-system/Aroc/.  </li>    
  </ul>
    
 ## Ubuntu
      cd ./TSE-Aroc/off-chain-patch-generation-system/Aroc/
      mkdir build
      cd build
      cmake ..
      make
  The executable file called `aroc` will be in the folder build/aroc/


# Install on-chain exploit prevention system
  ## Ubuntu
     cd ./TSE-Aroc/on-chain-exploit-prevention-system/
     mkdir github.com/ethereum/
     mv ./go-ethereum ./github.com/ethereum/
     cd ./github.com/ethereum/go-ethereum/
     make geth
     cd ../
     mkdir data
     geth --datadir data init genesis.json
     geth --datadir data --networkid xx --rpc --rpccorsdomain "*" --rpcaddr xx  --rpcport xx  --nodiscover --rpcapi "eth,net,web3,personal,miner" --allow-insecure-unlock console
     

# Test vulnerable contracts
   ## generate patches
   <ul>
   <li>in the ./Aroc/aroc/main.cpp, set the value of `tesetDir` variable as the directory including the vulnerable contract.</li>  
    <li> give the bug information in <code>0x0a0a0a0reBugInfo.csv</code> file: file_name contract_name target_line/bug_type ....</li>  
     <li>compile and run the Aroc to generate the patch: the patches are named as: file_name + contract_name.</li>  
   </ul>
     
 ## establish the binding relationship 
  <ul>
      <li>deploy the vulnerable contract to the private chain, and record the transaction nonce and the contract address.</li>  
      <li>deploy the patch to the privte chain, and record the patch address.</li>  
      <li>feed the patch address, the vulnerable contract address, the nonce of the vulnerable contract deployment transaction, and the vulnerable function signature to the <code>./TSE-Aroc/specoalTxCreator.go</code>.</li>  
      <li>run the specialTxCreator.go file to get the transaction payloads.</li>  
      <li>send a transaction with the above payloads to the private chain.</li>  
   </ul>   
   Now, the patch can protect the vulnerable contract from being exploited.
   
   
 # Code Structure Descriptions
   Some details about the repository structure as following:  
   <ul>
 <li>  <code>off-chain-patch-generation-system</code>  includes the patch generation system <code>Aroc</code>.  </li>
<li>  <code>on-chain-exploit-prevention-system</code> includes the enhanced EVM <code>go-ethereum</code> and the ethereum genesis file <code>genesis.json</code>.  </li>
<li>  <code>specialTxCreator.go</code> is used to generate the payloads of special transactions, which aims at binding the vulnerable contracts with the corresponding patches. </li>
<li>  <code>dataSet</code> includes all experimental datasets. All evaluated contracts are given the source codes, the bug information and the corresponding patches. The vulnerability information for the contract is placed in the <code>0x0a0a0a0reBugInfo.csv</code> file in the same directory as the contract. The corresponding patches named as (contractFileName+contractName) are also placed in the same directory as the vulnerable contract. Specifically,
          <ul>
          <li> <code>EVMPatch-comparison</code> is used to compare Aroc with EVMPatch[1].    </li>  
          <li> <code>EVMPatch-large scale</code> is used to evaluate the usability of Aroc. It is created based on the dataset provided by Osiris[2] (also used in EVMPatch):   
                 <ul>
                 <li> <code>allSrcs4015.rar</code> includes all contracts with source codes in the Osiris dataSet.  </li>  
                 <li> <code>OsirisResultsOnAllSrcs4015.zip</code> includes the Osiris detection results on <code>allSrcs4015.rar</code>.   </li>     
                 <li> <code>analyzeOsirisRes.py</code> is the tool to organize the Osiris detection results to extract the bug information.     </li>   
                 <li> <code>EVMPatch-Results.csv</code> includes the evaluation results of EVMPatch on the Osiris dataset.    </li>      
                 <li> <code>Sample500</code> includes the evaluation dataset on Aroc, Where contracts in <code>organizedoutData_repeatedDataset</code> contain repeated bugs.   </li>  </li> 
                 </ul>
          <li> <code>contractGuard</code> is used to compare Aroc with ContractGuard[3].   </li>    
          <li> <code>sereum</code> is used to evaluate whether Aroc can repair the three new reentrancy patterns proposed by Sereum[4].    </li>    
          <li> <code>smartbugs</code> is used to evalute whether Aroc can repair diverse vulnerabilities.  </li>   
          </ul>
      </li>
    </ul>
    
    
 # References
  [1] Rodler, M., Li, W., Karame, G. O., & Davi, L. (2021). EVMPatch: timely and automated patching of ethereum smart contracts. In 30th {USENIX} Security Symposium ({USENIX} Security 21).  
  [2] Torres, C. F., Schütte, J., & State, R. (2018, December). Osiris: Hunting for integer bugs in ethereum smart contracts. In Proceedings of the 34th Annual Computer Security Applications Conference (pp. 664-676).  
  [3] Wang, X., He, J., Xie, Z., Zhao, G., & Cheung, S. C. (2019). ContractGuard: Defend ethereum smart contracts with embedded intrusion detection. IEEE Transactions on Services Computing, 13(2), 314-328.  
  [4] Michael Rodler, Wenting Li, Ghassan O. Karame, & Lucas Davi. Sereum: Protecting Existing Smart Contracts Against Re-Entrancy Attacks. In Proceedings of the 26th Annual Network and Distributed System Security Symposium.  
                
   
     
   
