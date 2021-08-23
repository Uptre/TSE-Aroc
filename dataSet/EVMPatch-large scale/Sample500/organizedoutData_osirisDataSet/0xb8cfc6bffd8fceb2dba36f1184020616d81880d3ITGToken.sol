pragma solidity ^0.4.15;

contract ITGToken {
    struct DateTime {
        uint16 year;
        uint8 month;
        uint8 day;
        uint8 hour;
        uint8 minute;
        uint8 second;
        uint8 weekday;
    }

    struct SaleAttr {
        uint amountRaisedTotal;
        uint saleSupplyPre;
        uint saleSupply1;
        uint saleSupply2;
        uint saleSupply3;
        uint saleSupply4;
        uint amountRaisedPre;
        uint amountRaised1;
        uint amountRaised2;
        uint amountRaised3;
        uint amountRaised4;
        uint soldSupply2;
        uint soldSupply4;
    }

    struct SaleTimeAttr {
        uint pstart;
        uint pdeadline;
        uint start;
        uint deadline1;
        uint deadline2;
        uint deadline3;
        uint deadline4;
    }

    struct CustomSaleAttr {
        uint start;
        uint end;
        uint tokenPerEth;
        uint saleSupply;
        uint soldSupply;
        uint amountRaised;
    }

    enum GameTime{Hour, Month, Year, OutOfTime}
    enum GameType{Range, Point}
    struct Participant {
        address sender;
        uint value;
        uint currency;
    }

    struct DateAttr {
        uint currentYear;
        uint gameStart;
        uint gameEnd;
        uint prevGameEnd;
    }

    struct CommonAttr {
        GameTime currentGameTimeType;
        GameType gameType;
        uint hourlyAmountEth;
        uint monthlyAmountEth;
        uint yearlyAmountEth;
        uint charityAmountEth;
    }

    struct FundAmountStatusAttr {
        uint hourlyStatusEth;
        uint monthlyStatusEth;
        uint yearlyStatusEth;
        uint hourlyStatusTok;
        uint monthlyStatusTok;
    }

    struct PriceAttr {
        uint bonusPerEth;
        uint inGameTokPricePerEth;
        uint inGameTokWinRatioMax;
        uint inGameTokWinRatioMin;
        uint currentInGameTokWinRatio;
        uint hourlyMinParticipateRatio;
        uint monthlyMinParticipateRatio;
        uint yearlyMinParticipateRatio;
        uint boostPrizeEth;
    }

    struct RangeGameAttr {
        uint inTimeRange_H;
        uint inTimeRange_M;
        uint inTimeRange_Y;
    }

    bytes32 symbol = "ITG";
    uint256 decimals = 18;
    bytes32 name = "ITG";
    enum Status{CrowdSale, Game, Pause}
    Status status;
    CrowdSale crowdSale;
    Games games;
    Voting voting;
    mapping(address => uint) withdrawRestriction;
    uint minEtherParticipate;
    uint minTokParticipate;
    function USER_GAME_WITH_TOKEN(uint tokenAmountToGame) public view {
        if( status==Status.Game){

            if(tokenAmountToGame!=0 && 1 ether!=0){
          require((tokenAmountToGame * 1 ether/tokenAmountToGame==1 ether) && (tokenAmountToGame * 1 ether/1 ether==tokenAmountToGame));
            }      if( balances[msg.sender]>=tokenAmountToGame *  1 ether){

            if(tokenAmountToGame!=0 && 1 ether!=0){
          require((tokenAmountToGame * 1 ether/tokenAmountToGame==1 ether) && (tokenAmountToGame * 1 ether/1 ether==tokenAmountToGame));
            }        }
}


    }

}
