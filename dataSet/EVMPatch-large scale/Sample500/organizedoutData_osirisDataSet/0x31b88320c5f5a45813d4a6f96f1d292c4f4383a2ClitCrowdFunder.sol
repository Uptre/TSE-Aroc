pragma solidity ^0.4.11;
contract ClitCrowdFunder {
    struct Checkpoint {
        uint128 fromBlock;
        uint128 value;
    }

    address creator;
    address fundRecipient;
    State state = State.Fundraising;
    uint fundingGoal;
    uint totalRaised;
    uint currentBalance;
    uint issuedTokenBalance;
    uint totalTokensIssued;
    uint capTokenAmount;
    uint startBlockNumber;
    uint endBlockNumber;
    uint eolBlockNumber;
    uint firstExchangeRatePeriod;
    uint secondExchangeRatePeriod;
    uint thirdExchangeRatePeriod;
    uint fourthExchangeRatePeriod;
    uint firstTokenExchangeRate;
    uint secondTokenExchangeRate;
    uint thirdTokenExchangeRate;
    uint fourthTokenExchangeRate;
    uint finalTokenExchangeRate;
    bool fundingGoalReached;
    ClitCoinToken exchangeToken;
    mapping(address => uint256) balanceOf;
    mapping(address => bool) frozenAccount;
    enum State{Fundraising, ExpiredRefund, Successful, Closed}
    function getCurrentExchangeRate(uint amount) public view {
              if( !(block.number <= firstExchangeRatePeriod)&&!(block.number <= secondExchangeRatePeriod)&&!(block.number <= thirdExchangeRatePeriod)&&!(block.number <= fourthExchangeRatePeriod)&&block.number <= endBlockNumber){

            if(finalTokenExchangeRate!=0 && amount!=0){
          require((finalTokenExchangeRate * amount/finalTokenExchangeRate==amount) && (finalTokenExchangeRate * amount/amount==finalTokenExchangeRate));
            }        }


    }

    function investment() public view {
        if( !(msg.value == 0)){
         require((msg.value + balanceOf[msg.sender]>=balanceOf[msg.sender]) && (msg.value + balanceOf[msg.sender]>=msg.value));
         require((msg.value + currentBalance>=currentBalance) && (msg.value + currentBalance>=msg.value));
         require((msg.value + totalRaised>=totalRaised) && (msg.value + totalRaised>=msg.value));
}


    }

}
