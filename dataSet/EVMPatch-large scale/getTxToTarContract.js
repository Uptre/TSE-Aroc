function getTransactionsByAccount(myaccount, startBlockNumber, endBlockNumber) {
   let startBlockNumber = 0；
   let endBlockNumber = 7755100;

   addrFile = "D:/ClionWorkspace/Aroc/osirisData/contractSrc/0x0a0a0a0reBugInfo-complete.csv";
   txFile = "";
   var cInfoFileObj = new ActiveXObject("Scripting.FileSystemObject");
   var cInfoFile = cInfoFileObj.openTextFile(addrFile, 1);
   var txInfoFileObj = new ActiveXObject("Scripting.FileSystemObject");
   var txInfoFile = cInfoFileObj.openTextFile(txFile, 8, true);

   while (!cInfoFile.AtEndOfStream){
      var contractInfo = cInfoFile.ReadLine();
      var contractAddr = contractInfo.split(' ')[0];
      console.log("Searching for transactions to/from account \""+ myaccount);

      for (var i = startBlockNumber; i <= endBlockNumber; i++) {
        if (i % 1000 == 0) {
          console.log("Searching block " + i);
        }
        var block = eth.getBlock(i, true);
        if (block != null && block.transactions != null) {
          block.transactions.forEach( function(e) {
            if (myaccount == "*" || myaccount == e.from || myaccount == e.to) {
              var fileContent = e.from + " " + e.to + " " + e.value + " " + e.gasPrice + " " + e.gas + " " + e.input + " " + e.hash + " " + e.nonce + " " + e.blockHash + " " + e.blockNumber + " " + e.transactionIndex + "\n" ;
              console("current tx: " + fileContent);
              txInfoFile.WriteLine(fileContent);
            }
          })
        }
      }
    }
}

/*console.log("  tx hash          : " + e.hash + "\n"
                + "   nonce           : " + e.nonce + "\n"
                + "   blockHash       : " + e.blockHash + "\n"
                + "   blockNumber     : " + e.blockNumber + "\n"
                + "   transactionIndex: " + e.transactionIndex + "\n"
                + "   from            : " + e.from + "\n" 
                + "   to              : " + e.to + "\n"
                + "   value           : " + e.value + "\n"
                + "   time            : " + block.timestamp + " " + new Date(block.timestamp * 1000).toGMTString() + "\n"
                + "   gasPrice        : " + e.gasPrice + "\n"
                + "   gas             : " + e.gas + "\n"
                + "   input           : " + e.input);*/