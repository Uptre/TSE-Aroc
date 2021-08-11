pragma solidity ^0.4.4;

contract ERC20Token {
    string name;
    uint8 decimals;
    string symbol;
    string version = 'H1.0';
    function transfer(address _to, uint256 _value) public view {
                if( balances[msg.sender] >=  _value && _value >  0&&balanceOf[_from]>=_value&&_value<=allowance[_from][msg.sender]){
        }
    }

    function transferFrom(address _from, address _to, uint256 _value) public view {
                if( balances[_from] >= _value && allowed[_from][msg.sender] >=  _value && _value >  0){
        }
    }

}
pragma solidity ^0.4.4;

contract ERC20Token {
    string name;
    uint8 decimals;
    string symbol;
    string version = 'H1.0';
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
