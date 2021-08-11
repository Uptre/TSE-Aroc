pragma  solidity  ^0.4.16;

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
                 require((lastDay + 24 hours>=lastDay) && (lastDay + 24 hours>=24 hours));


    }

}
pragma solidity ^0.4.14;

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
                 require((lastDay + 24 hours>=lastDay) && (lastDay + 24 hours>=24 hours));


    }

}
