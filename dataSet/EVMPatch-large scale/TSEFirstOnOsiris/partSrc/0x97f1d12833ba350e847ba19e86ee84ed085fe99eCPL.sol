pragma solidity ^0.4.13;

contract CPL {
    string name = "CPL";
    string symbol = "CPL";
    uint256 decimals = 18;
    string version = "1.0";
    address CPLTokenDeposit;
    uint256 factorial = 6;
    uint256 CPLPrivate = 200 * (10 ** factorial) * 10 ** decimals;
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
pragma solidity ^0.4.13;

contract CPL {
    string name = "CPL";
    string symbol = "CPL";
    uint256 decimals = 18;
    string version = "1.0";
    address CPLTokenDeposit;
    uint256 factorial = 6;
    uint256 CPLPrivate = 200 * (10 ** factorial) * 10 ** decimals;
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
pragma solidity ^0.4.13;

contract CPL {
    string name = "CPL";
    string symbol = "CPL";
    uint256 decimals = 18;
    string version = "1.0";
    address CPLTokenDeposit;
    uint256 factorial = 6;
    uint256 CPLPrivate = 200 * (10 ** factorial) * 10 ** decimals;
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
pragma solidity ^0.4.13;

contract CPL {
    string name = "CPL";
    string symbol = "CPL";
    uint256 decimals = 18;
    string version = "1.0";
    address CPLTokenDeposit;
    uint256 factorial = 6;
    uint256 CPLPrivate = 200 * (10 ** factorial) * 10 ** decimals;
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
