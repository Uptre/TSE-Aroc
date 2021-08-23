pragma solidity ^0.4.18;

contract StandardToken {
    mapping(address => uint256) balances;
    mapping(address => mapping(address => uint256)) allowed;
    function transferFrom(address _from, address _to, uint256 _value) public view {
              if( balances[_from] >= _value && allowed[_from][msg.sender] >=  _value && _value >  0){
         require((_value + balances[_to]>=balances[_to]) && (_value + balances[_to]>=_value));
        }


    }

}
