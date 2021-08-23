pragma  solidity  ^0.4.16;

contract Crowdsale {
    struct Investor {
        uint amountTokens;
        uint amountWei;
    }

    enum State{Initial, PreSale, WaitingForSale, Sale, CrowdsaleCompleted, SaleFailed}
    uint etherPriceUSDWEI;
    address beneficiary;
    uint totalLimitUSDWEI;
    uint minimalSuccessUSDWEI;
    uint collectedUSDWEI;
    uint crowdsaleStartTime;
    uint crowdsaleFinishTime;
    uint tokenPriceUSDWEI = 100000000000000000;

    struct BtcDeposit {
        uint amountBTCWEI;
        uint btcPriceUSDWEI;
        address investor;
    }

    mapping(bytes32 => BtcDeposit) btcDeposits;
    mapping(address => Investor) investors;
    mapping(uint => address) investorsIter;
    uint numberOfInvestors;
    mapping(uint => address) investorsToWithdrawIter;
    uint numberOfInvestorsToWithdraw;
    function () public {
        
            if(msg.value!=0 && etherPriceUSDWEI!=0){
          require((msg.value * etherPriceUSDWEI / 1 ether/msg.value==etherPriceUSDWEI) && (msg.value * etherPriceUSDWEI / 1 ether/etherPriceUSDWEI==msg.value));
            }

    }

}