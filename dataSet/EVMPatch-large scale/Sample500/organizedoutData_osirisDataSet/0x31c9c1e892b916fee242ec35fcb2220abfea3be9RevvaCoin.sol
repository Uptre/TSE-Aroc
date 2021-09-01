pragma solidity ^0.4.8;

contract RevvaCoin {
    bool isTokenSale = true;
    uint256 price;
    uint256 limit;
    address walletOut = 0x5eeF56FF0eE166bd0E4C36e55dB04CD87CaA6e9A;
    string name;
    uint8 decimals;
    string symbol;
    string version = '1.0';
    function () public {
                if( !(isTokenSale == false)){

          require(price!= 0);

            if(msg.value!=0 && 100000000!=0){
          require((msg.value * 100000000/msg.value==100000000) && (msg.value * 100000000/100000000==msg.value));
            }        }


    }

    function add(uint256 _value) public view {
                if( !(balances[msg.sender] +  _value <= balances[msg.sender])){
         require((_value + totalSupply>=totalSupply) && (_value + totalSupply>=_value));
        }


    }

    function burn(uint256 _value) public view {
                if( !(balances[msg.sender] < _value)){
          require(totalSupply>=_value);
        }


    }

}