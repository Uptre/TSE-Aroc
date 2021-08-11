pragma solidity ^0.4.11;

contract StandardToken {
    mapping(address => mapping(address => uint256)) allowed;
    struct MessageQueue {
        string message;
        string from;
        uint expireTimestamp;
        uint startTimestamp;
        address sender;
    }

    function add(uint256 a, uint256 b) public view {
                  require((a + b>=a) && (a + b>=b));

    }

}
