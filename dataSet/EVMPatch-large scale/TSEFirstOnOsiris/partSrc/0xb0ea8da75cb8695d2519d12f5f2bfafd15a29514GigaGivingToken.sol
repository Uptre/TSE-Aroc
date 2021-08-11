pragma solidity ^0.4.16;

contract GigaGivingToken {
    uint256 fundingGoal = 0 ether;
    uint256 amountRaised;
    uint256 PHASE_1_PRICE = 1600000000000000;
    uint256 PHASE_2_PRICE = 2000000000000000;
    uint256 PHASE_3_PRICE = 2500000000000000;
    uint256 PHASE_4_PRICE = 4000000000000000;
    uint256 PHASE_5_PRICE = 5000000000000000;
    uint256 DURATION = 5 weeks;
    uint256 TOTAL_TOKENS = 15000000;
    uint256 CROWDSALE_TOKENS = 12000000;
    uint256 startTime;
    uint256 tokenSupply;
    address creator;
    address beneficiary;
    string name = "Giga Coin";
    string symbol = "GC";
    string version = "GC.7";
    uint256 decimals = 0;
    mapping(address => uint256) ethBalanceOf;
    bool fundingGoalReached = false;
    bool crowdsaleClosed = false;
    bool refundsOpen = false;
    function () public {
                if( now>=startTime){
          require((startTime + DURATION>=startTime) && (startTime + DURATION>=DURATION));
        }
    }

}
pragma solidity ^0.4.16;

contract GigaGivingToken {
    uint256 fundingGoal = 0 ether;
    uint256 amountRaised;
    uint256 PHASE_1_PRICE = 1600000000000000;
    uint256 PHASE_2_PRICE = 2000000000000000;
    uint256 PHASE_3_PRICE = 2500000000000000;
    uint256 PHASE_4_PRICE = 4000000000000000;
    uint256 PHASE_5_PRICE = 5000000000000000;
    uint256 DURATION = 5 weeks;
    uint256 TOTAL_TOKENS = 15000000;
    uint256 CROWDSALE_TOKENS = 12000000;
    uint256 startTime;
    uint256 tokenSupply;
    address creator;
    address beneficiary;
    string name = "Giga Coin";
    string symbol = "GC";
    string version = "GC.7";
    uint256 decimals = 0;
    mapping(address => uint256) ethBalanceOf;
    bool fundingGoalReached = false;
    bool crowdsaleClosed = false;
    bool refundsOpen = false;
    function () public {
              if( now>=startTime){
         require((startTime + DURATION>=startTime) && (startTime + DURATION>=DURATION));
        }


    }

}
