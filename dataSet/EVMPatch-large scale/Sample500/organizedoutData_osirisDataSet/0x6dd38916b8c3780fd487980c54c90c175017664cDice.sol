pragma  solidity  ^0.4.16;

contract Dice {
    uint pwin = 5000;
    uint edge = 190;
    uint maxWin = 100;
    uint minBet = 200 finney;
    uint maxInvestors = 10;
    uint houseEdge = 25;
    uint divestFee = 50;
    uint emergencyWithdrawalRatio = 10;
    uint safeGas = 2300;
    uint ORACLIZE_GAS_LIMIT = 175000;
    uint INVALID_BET_MARKER = 99999;
    uint EMERGENCY_TIMEOUT = 3 days;
    struct Investor {
        address investorAddress;
        uint amountInvested;
        bool votedForEmergencyWithdrawal;
    }

    struct Bet {
        address playerAddress;
        uint amountBet;
        uint numberRolled;
    }

    struct WithdrawalProposal {
        address toAddress;
        uint atTime;
    }

    mapping(address => uint) investorIDs;
    mapping(uint => Investor) investors;
    uint numInvestors = 0;
    uint invested = 0;
    address owner;
    address houseAddress;
    bool isStopped;
    WithdrawalProposal proposedWithdrawal;
    mapping(bytes32 => Bet) bets;
    bytes32[] betsKeys;
    uint investorsProfit = 0;
    uint investorsLosses = 0;
    bool profitDistributed;
    function bet() public view {
                if( !(OraclizeI(OAR.getAddress()).getPrice("URL", ORACLIZE_GAS_LIMIT + safeGas) >= msg.value)){

            if(maxWin!=0 && getBankroll()!=0){
          require((maxWin * getBankroll()/maxWin==getBankroll()) && (maxWin * getBankroll()/getBankroll()==maxWin));
            }        }


    }

    function getProfitShare(address currentInvestor) public view {
        
          require(invested!= 0);

            if(investors[investorIDs[currentInvestor]].amountInvested!=0 && (investorsProfit)!=0){
          require((investors[investorIDs[currentInvestor]].amountInvested * (investorsProfit)/investors[investorIDs[currentInvestor]].amountInvested==(investorsProfit)) && (investors[investorIDs[currentInvestor]].amountInvested * (investorsProfit)/(investorsProfit)==investors[investorIDs[currentInvestor]].amountInvested));
            }

    }

}
pragma solidity ^0.4.0;pragma solidity ^0.4.0;

contract Dice {
    uint pwin = 5000;
    uint edge = 190;
    uint maxWin = 100;
    uint minBet = 200 finney;
    uint maxInvestors = 10;
    uint houseEdge = 25;
    uint divestFee = 50;
    uint emergencyWithdrawalRatio = 10;
    uint safeGas = 2300;
    uint ORACLIZE_GAS_LIMIT = 175000;
    uint INVALID_BET_MARKER = 99999;
    uint EMERGENCY_TIMEOUT = 3 days;
    struct Investor {
        address investorAddress;
        uint amountInvested;
        bool votedForEmergencyWithdrawal;
    }

    struct Bet {
        address playerAddress;
        uint amountBet;
        uint numberRolled;
    }

    struct WithdrawalProposal {
        address toAddress;
        uint atTime;
    }

    mapping(address => uint) investorIDs;
    mapping(uint => Investor) investors;
    uint numInvestors = 0;
    uint invested = 0;
    address owner;
    address houseAddress;
    bool isStopped;
    WithdrawalProposal proposedWithdrawal;
    mapping(bytes32 => Bet) bets;
    bytes32[] betsKeys;
    uint investorsProfit = 0;
    uint investorsLosses = 0;
    bool profitDistributed;
    function bet() public view {
        
            if(maxWin!=0 && getBankroll()!=0){
          require((maxWin * getBankroll()/maxWin==getBankroll()) && (maxWin * getBankroll()/getBankroll()==maxWin));
            }

    }

    function getProfitShare(address currentInvestor) public view {
        
          require(invested!= 0);

            if(investors[investorIDs[currentInvestor]].amountInvested!=0 && (investorsProfit)!=0){
          require((investors[investorIDs[currentInvestor]].amountInvested * (investorsProfit)/investors[investorIDs[currentInvestor]].amountInvested==(investorsProfit)) && (investors[investorIDs[currentInvestor]].amountInvested * (investorsProfit)/(investorsProfit)==investors[investorIDs[currentInvestor]].amountInvested));
            }

    }

}
pragma solidity ^0.4.0;pragma solidity ^0.4.0;

contract Dice {
    uint pwin = 5000;
    uint edge = 190;
    uint maxWin = 100;
    uint minBet = 200 finney;
    uint maxInvestors = 10;
    uint houseEdge = 25;
    uint divestFee = 50;
    uint emergencyWithdrawalRatio = 10;
    uint safeGas = 2300;
    uint ORACLIZE_GAS_LIMIT = 175000;
    uint INVALID_BET_MARKER = 99999;
    uint EMERGENCY_TIMEOUT = 3 days;
    struct Investor {
        address investorAddress;
        uint amountInvested;
        bool votedForEmergencyWithdrawal;
    }

    struct Bet {
        address playerAddress;
        uint amountBet;
        uint numberRolled;
    }

    struct WithdrawalProposal {
        address toAddress;
        uint atTime;
    }

    mapping(address => uint) investorIDs;
    mapping(uint => Investor) investors;
    uint numInvestors = 0;
    uint invested = 0;
    address owner;
    address houseAddress;
    bool isStopped;
    WithdrawalProposal proposedWithdrawal;
    mapping(bytes32 => Bet) bets;
    bytes32[] betsKeys;
    uint investorsProfit = 0;
    uint investorsLosses = 0;
    bool profitDistributed;
    function bet() public view {
        
            if(maxWin!=0 && getBankroll()!=0){
          require((maxWin * getBankroll()/maxWin==getBankroll()) && (maxWin * getBankroll()/getBankroll()==maxWin));
            }

    }

    function getProfitShare(address currentInvestor) public view {
        
          require(invested!= 0);

            if(investors[investorIDs[currentInvestor]].amountInvested!=0 && (investorsProfit)!=0){
          require((investors[investorIDs[currentInvestor]].amountInvested * (investorsProfit)/investors[investorIDs[currentInvestor]].amountInvested==(investorsProfit)) && (investors[investorIDs[currentInvestor]].amountInvested * (investorsProfit)/(investorsProfit)==investors[investorIDs[currentInvestor]].amountInvested));
            }

    }

}
