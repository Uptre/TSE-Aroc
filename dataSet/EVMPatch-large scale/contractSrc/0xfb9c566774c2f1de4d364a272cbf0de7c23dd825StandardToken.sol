pragma solidity ^0.4.8;

contract StandardToken {
    mapping(address => uint256) balances;
    mapping(address => uint256) lockedBalances;
    mapping(address => uint256) initLockedBalances;
    mapping(address => mapping(address => uint256)) allowed;
    bool allowTransfer = false;
    function balanceOf(address _owner) public view {
                  require((balances[_owner] + lockedBalances[_owner]>=balances[_owner]) && (balances[_owner] + lockedBalances[_owner]>=lockedBalances[_owner]));

    }

    function transfer(address _to, uint256 _value) public view {
                if( balances[msg.sender] >= _value && _value >  0 && allowTransfer&&balanceOf[_from]-_value < _value&&_value > allowance[_from][msg.sender]){
        }
    }

    function transferFrom(address _from, address _to, uint256 _value) public view {
                if( balances[_from] >= _value && allowed[_from][msg.sender] >= _value && _value >  0 && allowTransfer){
          require((_value + balances[_to]>=balances[_to]) && (_value + balances[_to]>=_value));
        }
    }

}
