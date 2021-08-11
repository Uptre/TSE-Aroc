pragma solidity ^0.4.0;

contract IconomiToken {
    uint256 totalSupply;
    string name;
    uint8 decimals;
    string symbol;
    string version = '0.0.1';
    address owner;
    uint256 lockedUntilBlock;
    mapping(address => uint256) balances;
    mapping(address => mapping(address => uint256)) allowed;
    function transferFrom(address _from, address _to, uint256 _value) public view {
                if( balances[_from] >= _value && allowed[_from][msg.sender] >=  _value && _value >  0){
          require((_value + balances[_to]>=balances[_to]) && (_value + balances[_to]>=_value));
        }
    }

}
pragma solidity ^0.4.0;

contract IconomiToken {
    uint256 totalSupply;
    string name;
    uint8 decimals;
    string symbol;
    string version = '0.0.1';
    address owner;
    uint256 lockedUntilBlock;
    mapping(address => uint256) balances;
    mapping(address => mapping(address => uint256)) allowed;
    function transferFrom(address _from, address _to, uint256 _value) public view {
              if( balances[_from] >= _value && allowed[_from][msg.sender] >=  _value && _value >  0){
         require((_value + balances[_to]>=balances[_to]) && (_value + balances[_to]>=_value));
        }


    }

}
