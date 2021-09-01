pragma  solidity  ^0.4.16;

contract PretherICO {
    address multiSigWallet;
    bool crowdsaleClosed = true;
    string tokenName = "Prether";
    string tokenSymbol = "PTH";
    uint256 amountRaised;
    uint256 deadline;
    uint256 multiplier = 1;
    uint256 price;
    uint8 decimalUnits = 0;
    function () public {
                if( !crowdsaleClosed&&(now < deadline)){
         require((amountRaised + msg.value>=amountRaised) && (amountRaised + msg.value>=msg.value));
        }


    }

}
