pragma solidity ^0.4.4;

contract DeezNuts {
    string name;
    uint8 decimals;
    string symbol;
    string version = '0.0';
    uint256 unitsOneEthCanBuy;
    uint256 totalEthInWei;
    address fundsWallet;
    function () public {
                 require((totalEthInWei + msg.value>=totalEthInWei) && (totalEthInWei + msg.value>=msg.value));


    }

}
