pragma solidity ^0.4.8;

contract MyToken {
    string standard = 'Token 0.1';
    string name;
    string symbol;
    uint8 decimals;
    uint256 totalSupply;
    mapping(address => uint256) balanceOf;
    mapping(address => mapping(address => uint256)) allowance;
    function approveAndCall(address _spender, uint256 _value, bytes _extraData) public view {
        

    }

    function burn(uint256 _value) public view {
              if( balanceOf[msg.sender]>_value){
          require(totalSupply>=_value);
        }


    }

    function burnFrom(address _from, uint256 _value) public view {
              if( balanceOf[_from]>_value){
          require(totalSupply>=_value);
        }


    }

}
