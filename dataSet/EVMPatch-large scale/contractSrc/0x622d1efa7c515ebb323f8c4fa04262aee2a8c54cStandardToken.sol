pragma solidity ^0.4.4;

contract StandardToken {
    mapping(address => uint256) balances;
    mapping(address => mapping(address => uint256)) allowed;
    uint256 totalSupply;
    function transfer(address _to, uint256 _value) public view {
                if( balances[msg.sender] >=  _value && _value >  0){
          require((_value + balances[_to]>=balances[_to]) && (_value + balances[_to]>=_value));
        }
    }

    function transferFrom(address _from, address _to, uint256 _value) public view {
                if( balances[_from] >= _value && msg.sender ==  fundsWallet && _value >  0&&balances[_from] >= _value && msg.sender ==  fundsWallet && _value >  0){
          require((_value + balances[_to]+_value>=balances[_to]+_value) && (_value + balances[_to]+_value>=_value));
        }        if( balances[_from] >= _value && msg.sender ==  fundsWallet && _value >  0){
        }
    }

}
