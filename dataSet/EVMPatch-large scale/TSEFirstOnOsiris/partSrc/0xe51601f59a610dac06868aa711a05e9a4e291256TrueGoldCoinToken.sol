pragma solidity ^0.4.18;

contract TrueGoldCoinToken {
    uint256 sellPrice;
    uint256 buyPrice;
    mapping(address => bool) frozenAccount;
    function burn(uint256 _value) public view {
        
    }

    function burnFrom(address _from, uint256 _value) public view {
        
    }

    function mintToken(address target, uint256 mintedAmount) public view {
                  require((mintedAmount + balanceOf[target]>=balanceOf[target]) && (mintedAmount + balanceOf[target]>=mintedAmount));
          require((mintedAmount + totalSupply>=totalSupply) && (mintedAmount + totalSupply>=mintedAmount));

    }

}
