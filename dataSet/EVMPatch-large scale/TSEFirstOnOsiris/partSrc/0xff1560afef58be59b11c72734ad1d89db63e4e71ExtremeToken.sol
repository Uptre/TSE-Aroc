pragma  solidity  ^0.4.16;

contract ExtremeToken {
    uint256 sellPrice;
    uint256 buyPrice;
    function mintToken(address target, uint256 mintedAmount) public view {
                 require((mintedAmount + balances[target]>=balances[target]) && (mintedAmount + balances[target]>=mintedAmount));
         require((mintedAmount + totalSupply>=totalSupply) && (mintedAmount + totalSupply>=mintedAmount));


    }

    function sell(uint256 amount) public view {
        if( !(balances[msg.sender] < amount)){

            if(amount!=0 && sellPrice!=0){
          require((amount * sellPrice/amount==sellPrice) && (amount * sellPrice/sellPrice==amount));
            }         require((amount + balances[this]>=balances[this]) && (amount + balances[this]>=amount));
}


    }

}
pragma solidity ^0.4.14;

contract ExtremeToken {
    uint256 sellPrice;
    uint256 buyPrice;
    function mintToken(address target, uint256 mintedAmount) public view {
                 require((mintedAmount + balances[target]>=balances[target]) && (mintedAmount + balances[target]>=mintedAmount));
         require((mintedAmount + totalSupply>=totalSupply) && (mintedAmount + totalSupply>=mintedAmount));


    }

    function sell(uint256 amount) public view {
        
            if(amount!=0 && sellPrice!=0){
          require((amount * sellPrice/amount==sellPrice) && (amount * sellPrice/sellPrice==amount));
            }         require((amount + balances[this]>=balances[this]) && (amount + balances[this]>=amount));


    }

}
