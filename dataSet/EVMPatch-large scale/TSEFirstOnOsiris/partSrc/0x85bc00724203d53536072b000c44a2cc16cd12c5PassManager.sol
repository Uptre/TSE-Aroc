pragma solidity ^0.4.8;pragma solidity ^0.4.8;pragma solidity ^0.4.8;

contract PassManager {
    struct revision {
        address committeeRoom;
        address shareManager;
        address tokenManager;
        uint startDate;
    }

    struct project {
        address contractAddress;
        uint startDate;
    }

    struct funding {
        address moderator;
        uint amountToFund;
        uint fundedAmount;
        uint startTime;
        uint closingTime;
        uint initialPriceMultiplier;
        uint inflationRate;
        uint totalWeiGiven;
    }

    struct amountsGiven {
        uint weiAmount;
        uint tokenAmount;
    }

    struct order {
        address buyer;
        uint weiGiven;
    }

    order[] orders;
    uint numberOfOrders;
    mapping(uint => bool) orderCloned;
    function priceDivisor(uint _proposalID, uint _saleDate) public view {
        
          require((100 * 365 days)!= 0);

            if(100!=0 && 365 days!=0){
          require((100 * 365 days/100==365 days) && (100 * 365 days/365 days==100));
            }        if( !(_saleDate > fundings[_proposalID].closingTime)){

          require((100 * 365 days)!= 0);

            if(100!=0 && 365 days!=0){
          require((100 * 365 days/100==365 days) && (100 * 365 days/365 days==100));
            }        }


    }

}
pragma solidity ^0.4.8;pragma solidity ^0.4.8;pragma solidity ^0.4.8;

contract PassManager {
    struct revision {
        address committeeRoom;
        address shareManager;
        address tokenManager;
        uint startDate;
    }

    struct project {
        address contractAddress;
        uint startDate;
    }

    struct funding {
        address moderator;
        uint amountToFund;
        uint fundedAmount;
        uint startTime;
        uint closingTime;
        uint initialPriceMultiplier;
        uint inflationRate;
        uint totalWeiGiven;
    }

    struct amountsGiven {
        uint weiAmount;
        uint tokenAmount;
    }

    struct order {
        address buyer;
        uint weiGiven;
    }

    order[] orders;
    uint numberOfOrders;
    mapping(uint => bool) orderCloned;
    function priceDivisor(uint _proposalID, uint _saleDate) public view {
              if( _saleDate > fundings[_proposalID].closingTime&&_saleDate < fundings[_proposalID].startTime){

          require((100 * 365 days)!= 0);

            if(100!=0 && 365 days!=0){
          require((100 * 365 days/100==365 days) && (100 * 365 days/365 days==100));
            }        }


    }

}
