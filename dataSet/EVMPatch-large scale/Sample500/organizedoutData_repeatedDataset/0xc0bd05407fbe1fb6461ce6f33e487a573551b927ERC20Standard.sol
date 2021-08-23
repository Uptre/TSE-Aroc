pragma solidity ^0.4.11;

contract ERC20Standard {
    uint totalSupply;
    string name;
    uint8 decimals;
    string symbol;
    string version;
    mapping(address => uint256) balances;
    mapping(address => mapping(address => uint)) allowed;
    function transfer(address _recipient, uint _value) public view {
              if( balances[msg.sender] >=  _value&&_value >  0){
         require((_value + balances[_recipient]>=balances[_recipient]) && (_value + balances[_recipient]>=_value));
        }


    }

    function transferFrom(address _from, address _to, uint _value) public view {
              if( balances[_from] >= _value && allowed[_from][msg.sender] >=  _value&&_value >  0){
         require((_value + balances[_to]>=balances[_to]) && (_value + balances[_to]>=_value));
        }


    }

}
