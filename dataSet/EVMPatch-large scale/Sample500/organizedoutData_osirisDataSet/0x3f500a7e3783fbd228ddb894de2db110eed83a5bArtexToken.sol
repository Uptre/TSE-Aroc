pragma solidity ^ 0.4.13;

contract ArtexToken {
    enum State{Initial, PreSale, WaitingForSale, Sale, CrowdsaleCompleted, SaleFailed}
    struct Investor {
        uint amountTokens;
        uint amountWei;
    }

    struct BtcDeposit {
        uint amountBTCWEI;
        uint btcPriceUSDWEI;
        address investor;
    }

    string symbol = "ART";
    string name = "Artex Token";
    mapping(address => bool) allowedContracts;
    function () public {
        
            if(msg.value!=0 && etherPriceUSDWEI!=0){
          require((msg.value * etherPriceUSDWEI / 1 ether/msg.value==etherPriceUSDWEI) && (msg.value * etherPriceUSDWEI / 1 ether/etherPriceUSDWEI==msg.value));
            }

    }

    function getTokenPriceUSDWEI() public view {
              if( state == State.PreSale&&state == State.Sale){
         require((crowdsaleStartTime + 1 days>=crowdsaleStartTime) && (crowdsaleStartTime + 1 days>=1 days));
        }


    }

}
