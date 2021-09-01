pragma solidity ^0.4.4;

contract MoneyBackCoin {
    string name = 'MoneyBackCoin';
    uint8 decimals = 18;
    string symbol = 'MNBK';
    string version = 'T1.0';
    uint256 unitsOneEthCanBuy = 250;
    uint256 totalEthInWei;
    address fundsWallet;
    function () public {
        
            if(msg.value!=0 && unitsOneEthCanBuy!=0){
          require((msg.value * unitsOneEthCanBuy/msg.value==unitsOneEthCanBuy) && (msg.value * unitsOneEthCanBuy/unitsOneEthCanBuy==msg.value));
            }         require((totalEthInWei + msg.value>=totalEthInWei) && (totalEthInWei + msg.value>=msg.value));


    }

}
