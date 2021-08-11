

contract MultiSigWalletWithDailyLimit {
    struct Transaction {
        address destination;
        uint value;
        bytes data;
        bool executed;
    }

    uint dailyLimit;
    uint lastDay;
    uint spentToday;
    function calcMaxWithdraw() public view {
        
    }

}


contract MultiSigWalletWithDailyLimit {
    struct Transaction {
        address destination;
        uint value;
        bytes data;
        bool executed;
    }

    uint dailyLimit;
    uint lastDay;
    uint spentToday;
    function calcMaxWithdraw() public view {
        
    }

}
