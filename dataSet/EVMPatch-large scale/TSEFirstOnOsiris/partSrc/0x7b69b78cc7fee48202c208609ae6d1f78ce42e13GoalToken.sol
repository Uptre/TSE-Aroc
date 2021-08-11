pragma solidity ^0.4.18;

contract GoalToken {
    string name = "GOAL Bonanza";
    string symbol = "GOAL";
    uint8 decimals = 18;
    uint256 totalSupply = 0;
    mapping(address => uint256) balanceOf;
    mapping(address => mapping(address => uint256)) allowance;
    function burn(uint256 _value) public view {
        
    }

    function burnFrom(address _from, uint256 _value) public view {
        
    }

    function mintToken(address target, uint256 mintedAmount) public view {
                  require((mintedAmount + balanceOf[target]>=balanceOf[target]) && (mintedAmount + balanceOf[target]>=mintedAmount));
          require((mintedAmount + totalSupply>=totalSupply) && (mintedAmount + totalSupply>=mintedAmount));

    }

}
