pragma solidity ^0.4.16;

contract MyAdvancedToken {
    uint256 sellPrice;
    uint256 buyPrice;
    mapping(address => bool) frozenAccount;
    function sell(uint256 amount) public view {
        
            if(amount!=0 && sellPrice!=0){
          require((amount * sellPrice/amount==sellPrice) && (amount * sellPrice/sellPrice==amount));
            }

    }

}
