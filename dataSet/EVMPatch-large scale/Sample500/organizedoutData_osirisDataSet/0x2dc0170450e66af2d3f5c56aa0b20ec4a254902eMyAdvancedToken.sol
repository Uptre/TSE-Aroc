pragma solidity ^0.4.6;

contract MyAdvancedToken {
    uint256 buyPrice;
    uint256 totalSupply;
    uint256 claim;
    bool claimStatus;
    mapping(address => bool) frozenAccount;
    function mintToken(address target, uint256 mintedAmount) public view {
                  require((mintedAmount + balanceOf[target]>=balanceOf[target]) && (mintedAmount + balanceOf[target]>=mintedAmount));
          require((mintedAmount + totalSupply>=totalSupply) && (mintedAmount + totalSupply>=mintedAmount));

    }

}
