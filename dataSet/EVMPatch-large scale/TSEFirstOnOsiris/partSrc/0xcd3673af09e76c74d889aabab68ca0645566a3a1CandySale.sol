pragma solidity ^0.4.11;

contract CandySale {
    address teamWallet = address(0x7Bd19c5Fa45c5631Aa7EFE2Bf8Aa6c220272694F);
    uint fundingGoal;
    uint amountRaised;
    uint beginTime = now;
    uint stage2BeginTime = 1517529600;
    uint stage3BeginTime = 1518393600;
    uint stage4BeginTime = 1519257600;
    uint endTime = 1519776000;
    CandyCoin tokenReward;
    function buyTokens(address beneficiary) public view {
              if( msg.value>0){
         require((msg.value + amountRaised>=amountRaised) && (msg.value + amountRaised>=msg.value));
        }


    }

}
