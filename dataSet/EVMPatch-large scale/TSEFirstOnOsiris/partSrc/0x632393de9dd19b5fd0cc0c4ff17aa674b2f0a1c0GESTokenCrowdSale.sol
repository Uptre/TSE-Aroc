pragma solidity ^0.4.15;

contract GESTokenCrowdSale {
    struct TimeBonus {
        uint256 bonusPeriodEndTime;
        uint percent;
        uint256 weiCap;
    }

    bool isFinalised;
    MintableToken token;
    uint256 mainSaleStartTime;
    uint256 mainSaleEndTime;
    address wallet;
    address tokenWallet;
    uint256 rate = 100;
    uint256 weiRaised;
    uint256 saleMinimumWei = 100000000000000000;
    TimeBonus[] timeBonuses;
    function setMainSaleDates(uint256 _mainSaleStartTime) public view {
                if( !(isFinalised)){
          require((_mainSaleStartTime + 60 days>=_mainSaleStartTime) && (_mainSaleStartTime + 60 days>=60 days));
        }
    }

}
pragma solidity ^0.4.15;

contract GESTokenCrowdSale {
    struct TimeBonus {
        uint256 bonusPeriodEndTime;
        uint percent;
        uint256 weiCap;
    }

    bool isFinalised;
    MintableToken token;
    uint256 mainSaleStartTime;
    uint256 mainSaleEndTime;
    address wallet;
    address tokenWallet;
    uint256 rate = 100;
    uint256 weiRaised;
    uint256 saleMinimumWei = 100000000000000000;
    TimeBonus[] timeBonuses;
    function setMainSaleDates(uint256 _mainSaleStartTime) public view {
              if( !(isFinalised)){
         require((_mainSaleStartTime + 60 days>=_mainSaleStartTime) && (_mainSaleStartTime + 60 days>=60 days));
        }


    }

}
