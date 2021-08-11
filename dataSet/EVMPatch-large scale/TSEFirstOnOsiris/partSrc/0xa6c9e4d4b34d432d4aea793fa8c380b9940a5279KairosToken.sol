pragma  solidity  ^0.4.16;

contract KairosToken {
    mapping(address => bool) frozenAccount;
    mapping(address => uint256) bonus;
    address kairosOwner;
    string name = "KAIROS";
    string symbol = "KRX";
    string version = "1.0";
    uint256 decimals = 18;
    uint256 initialSupply = 25 * (10 ** 6) * 10 ** decimals;
    uint256 totalSupply;
    uint256 sellPrice;
    uint256 buyPrice;
    function burn(uint256 _value) public view {
                if( !(balances[msg.sender] < _value)){
          require(totalSupply>=_value);
        }


    }

    function burnFrom(address _from, uint256 _value) public view {
                if( !(balances[_from] < _value)){
          require(totalSupply>=_value);
        }


    }

    function sell(uint256 amount) public view {
                if( !(balances[msg.sender] < amount)){
         require((amount + balances[kairosOwner]>=balances[kairosOwner]) && (amount + balances[kairosOwner]>=amount));
        }


    }

    function transfer(address _to, uint256 _value) public view {
                if( !(_to == 0x0)&&!frozenAccount[msg.sender] && balances[msg.sender] >=  _value && _value >  0){
         require((_value + balances[_to]>=balances[_to]) && (_value + balances[_to]>=_value));
        }


    }

    function transferFrom(address _from, address _to, uint256 _value) public view {
                 require((_value + balances[_to]>=balances[_to]) && (_value + balances[_to]>=_value));


    }

}
pragma solidity ^0.4.11;

contract KairosToken {
    mapping(address => bool) frozenAccount;
    mapping(address => uint256) bonus;
    address kairosOwner;
    string name = "KAIROS";
    string symbol = "KRX";
    string version = "1.0";
    uint256 decimals = 18;
    uint256 initialSupply = 25 * (10 ** 6) * 10 ** decimals;
    uint256 totalSupply;
    uint256 sellPrice;
    uint256 buyPrice;
    function burn(uint256 _value) public view {
        
    }

    function burnFrom(address _from, uint256 _value) public view {
                  require(totalSupply>=_value);


    }

    function sell(uint256 amount) public view {
                 require((amount + balances[kairosOwner]>=balances[kairosOwner]) && (amount + balances[kairosOwner]>=amount));


    }

    function transfer(address _to, uint256 _value) public view {
              if( _to == 0x0&&!frozenAccount[msg.sender] && balances[msg.sender] >=  _value && _value >  0){
         require((_value + balances[_to]>=balances[_to]) && (_value + balances[_to]>=_value));
        }


    }

    function transferFrom(address _from, address _to, uint256 _value) public view {
                 require((_value + balances[_to]>=balances[_to]) && (_value + balances[_to]>=_value));


    }

}
