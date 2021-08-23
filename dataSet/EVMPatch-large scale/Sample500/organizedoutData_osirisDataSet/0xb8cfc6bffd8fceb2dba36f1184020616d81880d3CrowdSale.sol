pragma solidity ^0.4.15;

contract CrowdSale {
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

    SaleAttr s;
    mapping(address => uint) participantsForPreSale;
    mapping(address => uint) participantsFor1stSale;
    mapping(address => uint) participantsFor3rdSale;
    struct SaleTimeAttr {
        uint pstart;
        uint pdeadline;
        uint start;
        uint deadline1;
        uint deadline2;
        uint deadline3;
        uint deadline4;
    }

    SaleTimeAttr t;
    struct CustomSaleAttr {
        uint start;
        uint end;
        uint tokenPerEth;
        uint saleSupply;
        uint soldSupply;
        uint amountRaised;
    }

    CustomSaleAttr cs;
    mapping(uint => mapping(address => uint)) participantsForCustomSale;
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

    enum Status{CrowdSale, Game, Pause}
    function getToken(address sender) public view {
        
if( now >  t.pdeadline && participantsForPreSale[sender] !=  0){
      if( now >  t.deadline1 && participantsFor1stSale[sender] !=  0&&now >  t.deadline3 && participantsFor3rdSale[sender] !=  0&&now >  cs.end && participantsForCustomSale[cs.start][sender] !=  0){
        }
      if( now >  t.deadline1 && participantsFor1stSale[sender] !=  0&&now >  t.deadline3 && participantsFor3rdSale[sender] !=  0){
        }
}


    }

}
