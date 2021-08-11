pragma solidity ^0.4.13;

contract Sale {
    uint poolCapUSD = 1002750;
    uint usdPerEther = 350;
    uint supplyCap;
    uint businessPlannedPeriodDuration = 365 days;
    uint businessPlannedPeriodEndTimestamp;
    uint teamCap;
    uint8 teamShare = 45;
    uint distributedTeamStakes;
    uint contractCreatedTimestamp;
    address pool = 0x1882464533072e9fCd8C6D3c5c5b588548B95296;
    mapping(address => bool) rejectedInvestmentWithdrawals;
    uint allowedAmountToTransferToPool;
    uint allowedAmountTransferedToPoolTotal;
    uint investmentGuidesRewardsWithdrawn;
    uint distributedBountyStakes;
    uint bountyCap;
    uint8 bountyShare = 7;
    address supplier = 0x0000000000000000000000000000000000000000;
    struct saleData {
        uint stakes;
        uint invested;
        uint bonusStakes;
        uint guideReward;
        address guide;
    }

    mapping(address => saleData) saleStat;
    uint saleStartTimestamp = 1511373600;
    uint saleEndTimestamp = 1513965600;
    uint distributedSaleStakes;
    uint totalInvested;
    uint totalWithdrawn;
    uint saleCap;
    uint8 saleShare = 45;
    uint lastStakePriceUSCents;
    uint[] targetPrice;
    bool priceIsFrozen = false;
    struct guideData {
        bool registered;
        uint accumulatedPotentialReward;
        uint rewardToWithdraw;
        uint periodicallyWithdrawnReward;
    }

    mapping(address => guideData) guidesStat;
    uint bonusCap;
    uint distributedBonusStakes;
    uint bonusShare = 3;
    uint8 guideInvestmentAttractedShareToPay = 10;
    uint8 financePeriodsCount = 12;
    uint[] financePeriodsTimestamps;
    uint transferedToPool;
    function setStakePriceUSCents() public view {
                if( now < saleStartTimestamp&&now >=  saleStartTimestamp && now <  saleEndTimestamp&&now >=  saleEndTimestamp && now <  businessPlannedPeriodEndTimestamp){
          require((targetPrice[2] + ((now - saleEndTimestamp) * (targetPrice[3] - targetPrice[2])) / (businessPlannedPeriodEndTimestamp - saleEndTimestamp)>=targetPrice[2]) && (targetPrice[2] + ((now - saleEndTimestamp) * (targetPrice[3] - targetPrice[2])) / (businessPlannedPeriodEndTimestamp - saleEndTimestamp)>=((now - saleEndTimestamp) * (targetPrice[3] - targetPrice[2])) / (businessPlannedPeriodEndTimestamp - saleEndTimestamp)));

          require((businessPlannedPeriodEndTimestamp - saleEndTimestamp)!= 0);
        }
    }

}
pragma solidity ^0.4.13;

contract Sale {
    uint poolCapUSD = 1002750;
    uint usdPerEther = 350;
    uint supplyCap;
    uint businessPlannedPeriodDuration = 365 days;
    uint businessPlannedPeriodEndTimestamp;
    uint teamCap;
    uint8 teamShare = 45;
    uint distributedTeamStakes;
    uint contractCreatedTimestamp;
    address pool = 0x1882464533072e9fCd8C6D3c5c5b588548B95296;
    mapping(address => bool) rejectedInvestmentWithdrawals;
    uint allowedAmountToTransferToPool;
    uint allowedAmountTransferedToPoolTotal;
    uint investmentGuidesRewardsWithdrawn;
    uint distributedBountyStakes;
    uint bountyCap;
    uint8 bountyShare = 7;
    address supplier = 0x0000000000000000000000000000000000000000;
    struct saleData {
        uint stakes;
        uint invested;
        uint bonusStakes;
        uint guideReward;
        address guide;
    }

    mapping(address => saleData) saleStat;
    uint saleStartTimestamp = 1511373600;
    uint saleEndTimestamp = 1513965600;
    uint distributedSaleStakes;
    uint totalInvested;
    uint totalWithdrawn;
    uint saleCap;
    uint8 saleShare = 45;
    uint lastStakePriceUSCents;
    uint[] targetPrice;
    bool priceIsFrozen = false;
    struct guideData {
        bool registered;
        uint accumulatedPotentialReward;
        uint rewardToWithdraw;
        uint periodicallyWithdrawnReward;
    }

    mapping(address => guideData) guidesStat;
    uint bonusCap;
    uint distributedBonusStakes;
    uint bonusShare = 3;
    uint8 guideInvestmentAttractedShareToPay = 10;
    uint8 financePeriodsCount = 12;
    uint[] financePeriodsTimestamps;
    uint transferedToPool;
    function setStakePriceUSCents() public view {
                if( now < saleStartTimestamp&&now >=  saleStartTimestamp && now <  saleEndTimestamp&&now >=  saleEndTimestamp && now <  businessPlannedPeriodEndTimestamp){
          require((targetPrice[2] + ((now - saleEndTimestamp) * (targetPrice[3] - targetPrice[2])) / (businessPlannedPeriodEndTimestamp - saleEndTimestamp)>=targetPrice[2]) && (targetPrice[2] + ((now - saleEndTimestamp) * (targetPrice[3] - targetPrice[2])) / (businessPlannedPeriodEndTimestamp - saleEndTimestamp)>=((now - saleEndTimestamp) * (targetPrice[3] - targetPrice[2])) / (businessPlannedPeriodEndTimestamp - saleEndTimestamp)));

          require((businessPlannedPeriodEndTimestamp - saleEndTimestamp)!= 0);
        }
    }

}
