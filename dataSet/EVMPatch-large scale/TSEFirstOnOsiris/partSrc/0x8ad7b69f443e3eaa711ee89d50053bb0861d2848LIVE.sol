pragma solidity ^0.4.19;

contract LIVE {
    string name = "LIVE";
    uint8 decimals = 3;
    string symbol = "LVE";
    string version = 'H1.0';
    function transfer(address _to, uint256 _value) public view {
                if( balances[msg.sender] >=  _value && _value >  0&&balances[_from] >= _value && allowed[_from][msg.sender] >=  _value && _value >  0){
          require((_value + balances[_to]+_value>=balances[_to]+_value) && (_value + balances[_to]+_value>=_value));
        }
    }

    function transferFrom(address _from, address _to, uint256 _value) public view {
                if( balances[_from] >= _value && allowed[_from][msg.sender] >=  _value && _value >  0&&balances[_from] >= _value && allowed[_from][msg.sender]-_value >=  _value && _value >  0){
          require((_value + balances[_to]+_value>=balances[_to]+_value) && (_value + balances[_to]+_value>=_value));
        }
    }

}
