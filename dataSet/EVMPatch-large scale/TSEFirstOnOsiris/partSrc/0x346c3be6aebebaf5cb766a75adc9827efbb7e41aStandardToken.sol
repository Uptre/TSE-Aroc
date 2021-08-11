pragma solidity ^0.4.10;

contract StandardToken {
    mapping(address => uint256) balances;
    mapping(address => mapping(address => uint256)) allowed;
    uint256 totalSupply;
    function transfer(address _to, uint256 _value) public view {
                if( balances[msg.sender] < _value&&balances[_from] <  _value || allowed[_from][msg.sender] <  _value){
        }
    }

    function transferFrom(address _from, address _to, uint256 _value) public view {
                if( balances[_from] <  _value || allowed[_from][msg.sender] <  _value&&balances[_from]-_value <  _value || allowed[_from][msg.sender]-_value <  _value){
          require((_value + balances[_to]+_value>=balances[_to]+_value) && (_value + balances[_to]+_value>=_value));
        }
    }

}
