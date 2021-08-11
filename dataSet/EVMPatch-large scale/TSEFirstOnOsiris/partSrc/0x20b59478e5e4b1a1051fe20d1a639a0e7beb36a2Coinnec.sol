pragma solidity ^0.4.4;

contract Coinnec {
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

}
pragma solidity ^0.4.4;

contract Coinnec {
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

}
pragma solidity ^0.4.4;

contract Coinnec {
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

}
