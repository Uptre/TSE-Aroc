

contract EtherTopDog {
    uint bailoutBalance = 0;
    uint bailoutFundPercent = 70;
    uint topDogDividend = 15;
    uint topDogDecayPercent = 10;
    uint luckyDogDividend = 3;
    uint visionDogFeePercent = 2;
    uint topDogMinMarkup = 125;
    uint topDogMinPrice = 1;
    uint topDogBuyoutRange = 150;
    uint visionDogBuyPercent = 5;
    uint underDogMarkup = 150;
    uint topDogPriceCeiling = 0;
    uint topDogPriceFloor = 0;
    uint visionFees = 0;
    address topDog = 0x0;
    struct Underdog {
        address addr;
        uint deposit;
        uint payout;
        uint bailouts;
    }

    Underdog[] Underdogs;
    mapping(address => string) dogNames;
    uint luckyDog = 0;
    uint payoutIndex = 0;
    uint payoutCount = 0;
    address visionDog;
    function nextUnderdogPayout() public view {
                  require(Underdogs.length>=payoutIndex);


    }

    function underdogCount() public view {
                  require(Underdogs.length>=payoutIndex);


    }

    function underdogInfo(uint linePosition) public view {
                  require(Underdogs.length>=payoutIndex);
    }

}


contract EtherTopDog {
    uint bailoutBalance = 0;
    uint bailoutFundPercent = 70;
    uint topDogDividend = 15;
    uint topDogDecayPercent = 10;
    uint luckyDogDividend = 3;
    uint visionDogFeePercent = 2;
    uint topDogMinMarkup = 125;
    uint topDogMinPrice = 1;
    uint topDogBuyoutRange = 150;
    uint visionDogBuyPercent = 5;
    uint underDogMarkup = 150;
    uint topDogPriceCeiling = 0;
    uint topDogPriceFloor = 0;
    uint visionFees = 0;
    address topDog = 0x0;
    struct Underdog {
        address addr;
        uint deposit;
        uint payout;
        uint bailouts;
    }

    Underdog[] Underdogs;
    mapping(address => string) dogNames;
    uint luckyDog = 0;
    uint payoutIndex = 0;
    uint payoutCount = 0;
    address visionDog;
    function nextUnderdogPayout() public view {
                  require(Underdogs.length>=payoutIndex);


    }

    function underdogCount() public view {
                  require(Underdogs.length>=payoutIndex);


    }

    function underdogInfo(uint linePosition) public view {
                  require(Underdogs.length>=payoutIndex);


    }

}
