pragma solidity ^0.4.8;

contract Acme {
    string name;
    uint8 decimals;
    string symbol;
    string version = 'H1.0';
    uint256 price;
    uint256 totalEthInWei;
    address fundsWallet;
    function () public {
                 require((totalEthInWei + msg.value>=totalEthInWei) && (totalEthInWei + msg.value>=msg.value));


    }

}
