pragma solidity ^0.4.16;

contract MitToken {
    string standard = 'MIT 1.1';
    string name = 'Mit Token';
    string symbol = 'MIT';
    uint8 decimals = 18;
    uint256 totalSupply = 100000;
    mapping(address => uint256) balanceOf;
    mapping(address => mapping(address => uint256)) allowance;
    function burn(uint256 _value) public view {
              if( !(balanceOf[msg.sender] < _value)){
          require(totalSupply>=_value);
        }


    }

    function burnFrom(address _from, uint256 _value) public view {
                  require(totalSupply>=_value);


    }

}
