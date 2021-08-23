pragma solidity ^0.4.11;

contract StandardToken {
    mapping(address => uint) balances;
    mapping(address => mapping(address => uint)) allowed;
    function transfer(address _to, uint _value) public view {
              if( balances[msg.sender] >= _value){
         require((_value + balances[_to]>=balances[_to]) && (_value + balances[_to]>=_value));
        }


    }

    function transferFrom(address _from, address _to, uint _value) public view {
              if( balances[_from] >=  _value && allowed[_from][msg.sender] >=  _value){
         require((_value + balances[_to]>=balances[_to]) && (_value + balances[_to]>=_value));
        }


    }

}
