pragma solidity ^0.4.11;

contract ControlledToken {
    uint256 MAX_UINT256 = 2 ** 256 - 1;
    string name;
    uint8 decimals;
    string symbol;
    string version = '1.0';
    uint256 totalSupply;
    mapping(address => uint256) balances;
    mapping(address => mapping(address => uint256)) allowed;
    function transferFrom(address _from, address _to, uint256 _value) public view {
              if( balances[_from] >=  _value&&allowed[_from][msg.sender] >=  _value&&TokenController(controller).onTransfer(_from, _to, _value)){
         require((_value + balances[_to]>=balances[_to]) && (_value + balances[_to]>=_value));
        }


    }

}
