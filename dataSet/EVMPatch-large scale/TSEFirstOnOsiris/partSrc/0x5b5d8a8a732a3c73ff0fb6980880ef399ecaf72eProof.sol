
pragma  solidity  ^0.4.16;

contract Proof {
    enum State{Disabled, PreICO, CompletePreICO, Crowdsale, Enabled, Migration}
    struct Investor {
        uint amountTokens;
        uint amountWei;
    }

    enum Vote{NoVote, VoteYea, VoteNay}
    enum VoteReason{Nothing, ReqFund, Migration, UpdateContract}
    uint priceInTokens;
    uint teamFee;
    address proofImpl;
    function () public {
                if( state ==  State.PreICO||state ==  State.Crowdsale&&now<crowdsaleFinishTime){

            if(msg.value!=0 && etherPrice!=0){
          require((msg.value * etherPrice / 1000000000000000000/msg.value==etherPrice) && (msg.value * etherPrice / 1000000000000000000/etherPrice==msg.value));
            }        }


    }

}
