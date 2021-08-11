pragma solidity ^0.4.15;

contract RinghashRegistry {
    uint blocksToLive;
    struct Submission {
        address ringminer;
        uint block;
    }

    mapping(bytes32 => Submission) submissions;
    struct Order {
        address owner;
        address tokenS;
        address tokenB;
        uint amountS;
        uint amountB;
        uint timestamp;
        uint ttl;
        uint salt;
        uint lrcFee;
        bool buyNoMoreThanAmountB;
        uint8 marginSplitPercentage;
        uint8 v;
        bytes32 r;
        bytes32 s;
    }

    struct Rate {
        uint amountS;
        uint amountB;
    }

    struct OrderState {
        Order order;
        bytes32 orderHash;
        uint8 feeSelection;
        Rate rate;
        uint availableAmountS;
        uint fillAmountS;
        uint lrcReward;
        uint lrcFee;
        uint splitS;
        uint splitB;
    }

    struct Ring {
        bytes32 ringhash;
        OrderState[] orders;
        address miner;
        address feeRecepient;
        bool throwIfLRCIsInsuffcient;
    }

    function calculateRinghash(uint ringSize, uint8[] vList, bytes32[] rList, bytes32[] sList) public view {
        
    }

}
