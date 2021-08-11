pragma solidity ^0.4.4;

contract StandardToken {
    mapping(address => uint256) balances;
    mapping(address => mapping(address => uint256)) allowed;
    uint256 totalSupply;
    function transfer(address _to, uint256 _value) public view {
                if( balances[msg.sender] >=  _value && _value >  0&&balances[_from] >=  _value&&allowance >=  _value&&allowance < MAX_UINT256){
        }
    }

    function transferFrom(address _from, address _to, uint256 _value) public view {
                if( balances[_from] >= _value && allowed[_from][msg.sender] >=  _value && _value >  0&&balances[_from]-_value >=  _value&&allowance >=  _value&&allowance < MAX_UINT256){
        }
    }

}
