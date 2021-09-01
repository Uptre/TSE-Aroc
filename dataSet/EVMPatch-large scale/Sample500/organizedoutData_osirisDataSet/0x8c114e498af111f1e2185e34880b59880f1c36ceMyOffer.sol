pragma solidity ^0.4.13;

contract MyOffer {
    uint256 sellPrice;
    uint256 buyPrice;
    mapping(address => bool) frozenAccount;
    function mintToken(address target, uint256 mintedAmount) public view {
         require((mintedAmount + balanceOf[target]>=balanceOf[target]) && (mintedAmount + balanceOf[target]>=mintedAmount));
          require((mintedAmount + totalSupply>=totalSupply) && (mintedAmount + totalSupply>=mintedAmount));

    }

}
