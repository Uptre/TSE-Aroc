pragma solidity ^0.4.11;

contract StandardToken {
    mapping(address => uint) balances;
    mapping(address => bool) ownerAppended;
    mapping(address => mapping(address => uint)) allowed;
    uint totalSupply;
    address[] owners;
    enum State{Pause, Running}
    function transfer(address _to, uint _value) public view {
                if( balances[msg.sender] >=  _value && balances[_to] + _value >  balances[_to]){
        }
    }

    function transferFrom(address _from, address _to, uint _value) public view {
                if( balances[_from] >= _value && allowed[_from][msg.sender] >=  _value && balances[_to] + _value >  balances[_to]){
        }
    }

}
