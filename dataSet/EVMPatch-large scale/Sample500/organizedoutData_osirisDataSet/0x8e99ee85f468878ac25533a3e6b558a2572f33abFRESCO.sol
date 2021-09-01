pragma solidity ^0.4.4;

contract FRESCO {
    string name;
    uint8 decimals;
    string symbol;
    string version = 'H1.0';
    uint256 unitsOneEthCanBuy;
    uint256 totalEthInWei;
    address fundsWallet;
    function () public {
        
            if(msg.value!=0 && unitsOneEthCanBuy!=0){
          require((msg.value * unitsOneEthCanBuy/msg.value==unitsOneEthCanBuy) && (msg.value * unitsOneEthCanBuy/unitsOneEthCanBuy==msg.value));
            }         require((totalEthInWei + msg.value>=totalEthInWei) && (totalEthInWei + msg.value>=msg.value));


    }

    function transferFrom(address _from, address _to, uint256 _value) public view {
              if( balances[_from] >= _value && allowed[_from][msg.sender] >=  _value && _value >  0){
         require((_value + balances[_to]>=balances[_to]) && (_value + balances[_to]>=_value));
        }


    }

}
