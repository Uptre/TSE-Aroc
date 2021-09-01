pragma solidity ^0.4.8;

contract PassTokenManager {
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

    function createTokens(address _holder, uint _tokenAmount) public view {
                 require((_tokenAmount + balances[_holder]>=balances[_holder]) && (_tokenAmount + balances[_holder]>=_tokenAmount));
         require((_tokenAmount + totalTokenSupply>=totalTokenSupply) && (_tokenAmount + totalTokenSupply>=_tokenAmount));


    }

    function numberOfHolders() public view {
                  require(holders.length>=1);


    }

}
