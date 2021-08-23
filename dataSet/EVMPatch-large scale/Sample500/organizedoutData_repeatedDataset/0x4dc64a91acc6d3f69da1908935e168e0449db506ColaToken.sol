pragma solidity ^0.4.8;

contract ColaToken {
    string version = '0.1';
    string name;
    string symbol;
    uint8 decimals;
    address owner;
    uint256 _totalSupply;
    mapping(address => uint256) balances;
    mapping(address => mapping(address => uint256)) allowances;
    function burn(uint256 _value) public view {
              if( balances[msg.sender] < _value){
          require(_totalSupply>=_value);
        }


    }

    function burnFrom(address _from, uint256 _value) public view {
              if( balances[_from] < _value){
          require(_totalSupply>=_value);
        }


    }

}
