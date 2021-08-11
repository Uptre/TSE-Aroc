pragma solidity ^0.4.11;

contract Etherep {
    struct Score {
        bool exists;
        int cumulativeScore;
        uint totalRatings;
    }

    bool debug;
    address manager;
    uint fee;
    address storageAddress;
    uint waitTime;
    mapping(address => uint) lastRating;
    function setDebug(bool d) public view {
        
    }

}
