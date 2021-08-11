pragma solidity ^0.4.13;

contract ZJF {
    string name = "ZJFTest";
    string symbol = "ZJFTest";
    uint256 decimals = 18;
    string version = "1.0";
    address ZJFTokenDeposit;
    uint256 factorial = 6;
    uint256 ZJFPrivate = 300 * (10 ** factorial) * 10 ** decimals;
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
