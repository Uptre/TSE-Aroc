pragma solidity ^0.4.2;

contract StandardToken {
    uint256 totalSupply;
    mapping(address => uint256) balances;
    mapping(address => mapping(address => uint256)) allowed;
    function transferFrom(address _from, address _to, uint256 _value) public view {
                if( balances[_from] > _value && allowed[_from][msg.sender] >  _value && balances[_to] + _value >  balances[_to]){
          require(balances[_to]>=_value);
        }


    }

}
pragma solidity ^0.4.2;

contract StandardToken {
    uint256 totalSupply;
    mapping(address => uint256) balances;
    mapping(address => mapping(address => uint256)) allowed;
    function transferFrom(address _from, address _to, uint256 _value) public view {
              if( balances[_from] > _value && allowed[_from][msg.sender] >  _value && balances[_to] + _value >  balances[_to]){
          require(balances[_to]>=_value);
        }


    }

}
