pragma solidity ^0.4.18;

contract Karma {
    struct User {
        bytes20 username;
        uint64 karma;
        uint16 canWithdrawPeriod;
        uint16 birthPeriod;
    }

    mapping(address => User) users;
    mapping(bytes20 => address) usernames;
    uint256 epoch;
    uint256 dividend;
    uint64 numUsers;
    uint64 newUsers;
    uint16 currentPeriod = 1;
    address moderator;
    mapping(address => mapping(address => uint256)) allowed;

    function newPeriod() public view {
                  require((epoch + 28 days>=epoch) && (epoch + 28 days>=28 days));

    }

}
pragma solidity ^0.4.18;

contract Karma {
    struct User {
        bytes20 username;
        uint64 karma;
        uint16 canWithdrawPeriod;
        uint16 birthPeriod;
    }

    mapping(address => User) users;
    mapping(bytes20 => address) usernames;
    uint256 epoch;
    uint256 dividend;
    uint64 numUsers;
    uint64 newUsers;
    uint16 currentPeriod = 1;
    address moderator;
    mapping(address => mapping(address => uint256)) allowed;
    function newPeriod() public view {
                 require((epoch + 28 days>=epoch) && (epoch + 28 days>=28 days));


    }

}
