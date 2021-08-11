pragma solidity ^0.4.17;

contract ETHEREUMBLACK {
    uint256 sellPrice;
    uint256 buyPrice;
    mapping(address => bool) frozenAccount;
    uint256 initialSupply = 200000000 * 10 ** 18;
    uint8 decimalUnits = 18;
    string tokenName = "ETHEREUMBLACK";
    string tokenSymbol = "ETCBK";
    function mintToken(address target, uint256 mintedAmount) public view {
                  require((mintedAmount + balanceOf[target]>=balanceOf[target]) && (mintedAmount + balanceOf[target]>=mintedAmount));
          require((mintedAmount + totalSupply>=totalSupply) && (mintedAmount + totalSupply>=mintedAmount));

    }

}
