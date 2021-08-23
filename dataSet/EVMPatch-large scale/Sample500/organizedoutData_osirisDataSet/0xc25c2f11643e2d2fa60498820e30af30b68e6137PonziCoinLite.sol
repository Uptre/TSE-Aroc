pragma solidity ^0.4.2;

contract PonziCoinLite {
    string name = "PonziCoinLite";
    string symbol = "SECL";
    uint8 decimals = 3;
    uint buyPrice = 10 szabo;
    uint sellPrice = 2500000000000 wei;
    uint tierBudget = 100000;
    address founder = 0xb7Bd5cD91aAba1D521D208854C236818D1C71c88;
    function withdraw(uint tokenCount) public view {
        if( balances[msg.sender] >= tokenCount ){
            if(tokenCount!=0 && sellPrice!=0){
          require((tokenCount * sellPrice/tokenCount==sellPrice) && (tokenCount * sellPrice/sellPrice==tokenCount));
            }          require(totalSupply>=tokenCount);
}

    }

}
