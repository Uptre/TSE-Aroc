pragma solidity ^0.4.15;

contract StandardToken {
    uint256 _totalSupply;
    mapping(address => uint256) balances;
    mapping(address => mapping(address => uint256)) allowed;
    mapping(address => uint256) last_seen;
    struct Tkn {
        address addr;
        address sender;
        address origin;
        uint256 value;
        bytes data;
        bytes4 sig;
    }

    function transfer(address _to, uint256 _value) public view {
              if( balances[msg.sender] >=  _value && _value >  0){
         require((_value + balances[_to]>=balances[_to]) && (_value + balances[_to]>=_value));
        }


    }

    function transferFrom(address _from, address _to, uint256 _value) public view {
              if( balances[_from] >= _value && allowed[_from][msg.sender] >=  _value && _value >  0){
         require((_value + balances[_to]>=balances[_to]) && (_value + balances[_to]>=_value));
        }


    }

}
