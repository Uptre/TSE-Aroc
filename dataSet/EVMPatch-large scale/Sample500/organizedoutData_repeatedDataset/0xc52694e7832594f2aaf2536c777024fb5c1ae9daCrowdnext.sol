pragma solidity ^0.4.2;

contract Crowdnext {
    uint256 sellPrice;
    uint256 buyPrice;
    mapping(address => bool) frozenAccount;
    uint256 initialSupply = 100000000 * 10 ** 4;
    uint8 decimalUnits = 4;
    string tokenName = "Crowdnext";
    string tokenSymbol = "CNX";
    function mintToken(address target, uint256 mintedAmount) public view {
                 require((mintedAmount + balanceOf[target]>=balanceOf[target]) && (mintedAmount + balanceOf[target]>=mintedAmount));
         require((mintedAmount + totalSupply>=totalSupply) && (mintedAmount + totalSupply>=mintedAmount));


    }

}
