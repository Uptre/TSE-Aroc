pragma solidity ^0.4.13;

contract MB {
    string name = "MB";
    string symbol = "MB";
    uint256 decimals = 18;
    string version = "1.0";
    address GDCAcc01;
    address GDCAcc02;
    address GDCAcc03;
    address GDCAcc04;
    address GDCAcc05;
    uint256 factorial = 6;
    uint256 GDCNumber1 = 200 * (10 ** factorial) * 10 ** decimals;
    uint256 GDCNumber2 = 200 * (10 ** factorial) * 10 ** decimals;
    uint256 GDCNumber3 = 200 * (10 ** factorial) * 10 ** decimals;
    uint256 GDCNumber4 = 200 * (10 ** factorial) * 10 ** decimals;
    uint256 GDCNumber5 = 200 * (10 ** factorial) * 10 ** decimals;
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

    function transferLock(address _to, uint256 _value, bool flag) public view {
                if( balances[msg.sender] >= _value && _value >  0 && flag){
        }

    }

}
