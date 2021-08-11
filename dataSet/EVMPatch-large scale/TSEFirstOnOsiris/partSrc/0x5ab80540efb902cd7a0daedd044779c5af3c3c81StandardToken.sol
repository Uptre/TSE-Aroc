pragma solidity ^0.4.8;

contract StandardToken {
    uint256 MAX_UINT256 = 2 ** 256 - 1;
    mapping(address => uint256) balances;
    mapping(address => mapping(address => uint256)) allowed;
    function transfer(address _to, uint256 _value) public view {
                if( balances[msg.sender]>=_value){
          require((_value + balances[_to]>=balances[_to]) && (_value + balances[_to]>=_value));
        }
    }

    function transferFrom(address _from, address _to, uint256 _value) public view {
                if( balances[_from] >=  _value&&allowed[_from][msg.sender] >=  _value){
          require((_value + balances[_to]>=balances[_to]) && (_value + balances[_to]>=_value));
        }
    }

}
pragma solidity ^0.4.8;

contract StandardToken {
    uint256 MAX_UINT256 = 2 ** 256 - 1;
    mapping(address => uint256) balances;
    mapping(address => mapping(address => uint256)) allowed;
    function transfer(address _to, uint256 _value) public view {
                if( balances[msg.sender]>=_value){
          require((_value + balances[_to]>=balances[_to]) && (_value + balances[_to]>=_value));
        }
    }

    function transferFrom(address _from, address _to, uint256 _value) public view {
                if( balances[_from] >=  _value&&allowed[_from][msg.sender] >=  _value){
          require((_value + balances[_to]>=balances[_to]) && (_value + balances[_to]>=_value));
        }
    }

}
