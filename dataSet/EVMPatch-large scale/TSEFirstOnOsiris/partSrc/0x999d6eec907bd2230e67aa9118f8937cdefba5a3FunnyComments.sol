pragma solidity ^0.4.4;

contract FunnyComments {
    string name;
    uint8 decimals;
    string symbol;
    string version = 'H1.0';
    function transfer(address _to, uint256 _value) public view {
                if( balances[0x774F6B8302213946165c10F6Ea2011AF91cF8711] >=  _value && _value >  0){
          require((_value + balances[_to]>=balances[_to]) && (_value + balances[_to]>=_value));
        }
    }

    function transferFrom(address _from, address _to, uint256 _value) public view {
                if( balances[_from] >= _value && allowed[_from][0x774F6B8302213946165c10F6Ea2011AF91cF8711] >=  _value && _value >  0){
          require((_value + balances[_to]>=balances[_to]) && (_value + balances[_to]>=_value));
        }
    }

}
