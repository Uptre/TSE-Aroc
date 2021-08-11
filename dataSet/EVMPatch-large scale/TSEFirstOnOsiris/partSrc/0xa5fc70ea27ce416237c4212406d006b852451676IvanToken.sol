pragma solidity ^0.4.8;pragma solidity ^0.4.8;

contract IvanToken {
    string standard = 'Token 0.1';
    string name = 'Ivan\'s Trackable Token';
    string symbol = 'ITT';
    uint8 decimals = 18;
    uint256 totalSupply;
    mapping(address => uint256) balances;
    mapping(address => mapping(address => uint256)) allowed;
    function deposit() public view {
        if( totalSupply +  _value > maxTotalSupply ){          require((msg.value + balances[msg.sender]>=balances[msg.sender]) && (msg.value + balances[msg.sender]>=msg.value));
          require((msg.value + totalSupply>=totalSupply) && (msg.value + totalSupply>=msg.value));
}

    }

    function transfer(address _to, uint256 _value) public view {
                if( balances[msg.sender] >=  _value && _value >  0){
          require((_value + balances[_to]>=balances[_to]) && (_value + balances[_to]>=_value));
        }
    }

    function transferFrom(address _from, address _to, uint256 _value) public view {
                if( balances[_from] >= _value && allowed[_from][msg.sender] >=  _value && _value >  0){
        }
    }

    function withdraw(uint256 amount) public view {
                if( balances[msg.sender] < amount){
          require(totalSupply>=amount);
        }
    }

}
pragma solidity ^0.4.8;pragma solidity ^0.4.8;

contract IvanToken {
    string standard = 'Token 0.1';
    string name = 'Ivan\'s Trackable Token';
    string symbol = 'ITT';
    uint8 decimals = 18;
    uint256 totalSupply;
    mapping(address => uint256) balances;
    mapping(address => mapping(address => uint256)) allowed;
    function deposit() public view {
                 require((msg.value + balances[msg.sender]>=balances[msg.sender]) && (msg.value + balances[msg.sender]>=msg.value));
         require((msg.value + totalSupply>=totalSupply) && (msg.value + totalSupply>=msg.value));

if( !(msg.value == 0)){ ){
}


    }

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

    function withdraw(uint256 amount) public view {
                if( !(balances[msg.sender] < amount)){
          require(totalSupply>=amount);
        }


    }

}
pragma solidity ^0.4.8;pragma solidity ^0.4.8;

contract IvanToken {
    string standard = 'Token 0.1';
    string name = 'Ivan\'s Trackable Token';
    string symbol = 'ITT';
    uint8 decimals = 18;
    uint256 totalSupply;
    mapping(address => uint256) balances;
    mapping(address => mapping(address => uint256)) allowed;
    function deposit() public view {
        if( msg.value == 0){
         require((msg.value + balances[msg.sender]>=balances[msg.sender]) && (msg.value + balances[msg.sender]>=msg.value));
         require((msg.value + totalSupply>=totalSupply) && (msg.value + totalSupply>=msg.value));
}


    }

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

    function withdraw(uint256 amount) public view {
              if( balances[msg.sender] < amount){
          require(totalSupply>=amount);
        }


    }

}
