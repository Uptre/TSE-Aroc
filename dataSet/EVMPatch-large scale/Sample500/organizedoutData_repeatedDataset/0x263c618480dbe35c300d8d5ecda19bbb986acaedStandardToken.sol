pragma solidity ^0.4.19;

contract StandardToken {
    mapping(address => uint256) balances;
    mapping(address => mapping(address => uint256)) allowed;
    function transfer(address _to, uint256 _value) public view {
              if( balances[msg.sender] >=  _value && _value >  0){
         require((_value + balances[_to]>=balances[_to]) && (_value + balances[_to]>=_value));
        }


    }

}
