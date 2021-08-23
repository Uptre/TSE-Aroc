pragma solidity ^0.4.16;

contract CCCToken {
    string name = 'Crypto Crash Course';
    string symbol = 'CCC';
    uint8 decimals = 18;
    uint256 totalSupply = 1000000000000000000000000000;
    mapping(address => uint256) balanceOf;
    mapping(address => mapping(address => uint256)) allowance;
    function burn(uint256 _value) public view {
              if( balanceOf[msg.sender]>=_value){
          require(totalSupply>=_value);
        }


    }

    function burnFrom(address _from, uint256 _value) public view {
              if( balanceOf[_from]>=_value){
          require(totalSupply>=_value);
        }


    }

}