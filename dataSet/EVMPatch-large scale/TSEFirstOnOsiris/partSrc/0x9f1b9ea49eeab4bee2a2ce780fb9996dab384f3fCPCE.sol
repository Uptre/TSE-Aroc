pragma solidity ^0.4.13;

contract CPCE {
    string name = "CPC";
    string symbol = "CPC";
    uint256 decimals = 18;
    string version = "1.0";
    address CPCEPrivateDeposit;
    address CPCEIcoDeposit;
    address CPCEFundDeposit;
    uint256 factorial = 6;
    uint256 CPCEPrivate = 150 * (10 ** factorial) * 10 ** decimals;
    uint256 CPCEIco = 150 * (10 ** factorial) * 10 ** decimals;
    uint256 CPCEFund = 380 * (10 ** factorial) * 10 ** decimals;
    function transfer(address _to, uint256 _value) public view {
                if( balances[msg.sender] >=  _value && _value >  0){
          require((_value + balances[_to]>=balances[_to]) && (_value + balances[_to]>=_value));
        }
    }

    function transferFrom(address _from, address _to, uint256 _value) public view {
                if( balances[_from] >= _value && allowed[_from][msg.sender] >=  _value && _value >  0&&a == 0){
        }
    }

}
pragma solidity ^0.4.13;

contract CPCE {
    string name = "CPC";
    string symbol = "CPC";
    uint256 decimals = 18;
    string version = "1.0";
    address CPCEPrivateDeposit;
    address CPCEIcoDeposit;
    address CPCEFundDeposit;
    uint256 factorial = 6;
    uint256 CPCEPrivate = 150 * (10 ** factorial) * 10 ** decimals;
    uint256 CPCEIco = 150 * (10 ** factorial) * 10 ** decimals;
    uint256 CPCEFund = 380 * (10 ** factorial) * 10 ** decimals;
    function transfer(address _to, uint256 _value) public view {
                if( balances[msg.sender] >=  _value && _value >  0){
          require((_value + balances[_to]>=balances[_to]) && (_value + balances[_to]>=_value));
        }
    }

    function transferFrom(address _from, address _to, uint256 _value) public view {
                if( balances[_from] >= _value && allowed[_from][msg.sender] >=  _value && _value >  0&&a == 0){
        }
    }

}
