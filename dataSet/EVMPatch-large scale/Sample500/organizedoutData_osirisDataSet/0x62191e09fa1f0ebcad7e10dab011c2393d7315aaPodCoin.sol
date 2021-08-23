pragma solidity ^0.4.4;

contract PodCoin {
    string name;
    uint8 decimals;
    string symbol;
    string version = 'H1.0';
    address fundsWallet;
    function () public {
              if( balances[fundsWallet] < amount&&balances[msg.sender] == 0){
          require(balances[fundsWallet]>=10000000000000000000000);
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

}
