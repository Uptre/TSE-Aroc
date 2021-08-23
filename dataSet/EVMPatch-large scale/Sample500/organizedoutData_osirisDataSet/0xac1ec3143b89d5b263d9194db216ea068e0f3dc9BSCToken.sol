pragma  solidity  ^0.4.16;

contract BSCToken {
    uint256 sellPrice = 5000000000000000;
    uint256 buyPrice = 10000000000000000;
    bool closeBuy = false;
    bool closeSell = false;
    uint256 tokensAvailable = balanceOf[this];  //balanceOf
    uint256 distributedTokens = 0;
    uint256 solvency = this.balance;
    uint256 profit = 0;
    mapping(address => bool) frozenAccount;
    function _updateProfit(uint256 _increment, bool add) public view {
                 require((profit + _increment>=profit) && (profit + _increment>=_increment));


    }

    function completeMigration(address _to, uint256 _value) public view {
        
            if(_value!=0 && sellPrice!=0){
          require((_value * sellPrice/_value==sellPrice) && (_value * sellPrice/sellPrice==_value));
            }

    }

    function mintToken(address target, uint256 mintedAmount) public view {
                 require((mintedAmount + balanceOf[target]>=balanceOf[target]) && (mintedAmount + balanceOf[target]>=mintedAmount));


    }

    function withdraw(uint amountInWeis) public view {
                  require(this.balance>=amountInWeis);


    }

}
