pragma solidity ^0.4.16;

contract BigToken {
    string name = "Big Token";
    string symbol = "BIG";
    uint256 decimals = 18;
    uint256 mintPerBlock = 333333333333333;
    struct BigTransaction {
        uint blockNumber;
        uint256 amount;
    }

    uint commissionPercent = 10;
    uint256 totalTransactions = 0;
    bool enabledMint = true;
    uint256 totalMembers;
    mapping(address => mapping(address => uint256)) allowed;
    mapping(uint256 => BigTransaction) transactions;
    mapping(address => uint256) balances;
    mapping(address => uint) lastMint;
    mapping(address => bool) invested;
    mapping(address => bool) confirmed;
    mapping(address => bool) members;
    function getBalanceToMint(address _address) public view {
                if( !(!enabledMint)&&!(!members[_address])&&!(lastMint[_address] == 0)){
          require(totalTransactions>=1);
        }


    }

}
pragma solidity ^0.4.16;

contract BigToken {
    string name = "Big Token";
    string symbol = "BIG";
    uint256 decimals = 18;
    uint256 mintPerBlock = 333333333333333;
    struct BigTransaction {
        uint blockNumber;
        uint256 amount;
    }

    uint commissionPercent = 10;
    uint256 totalTransactions = 0;
    bool enabledMint = true;
    uint256 totalMembers;
    mapping(address => mapping(address => uint256)) allowed;
    mapping(uint256 => BigTransaction) transactions;
    mapping(address => uint256) balances;
    mapping(address => uint) lastMint;
    mapping(address => bool) invested;
    mapping(address => bool) confirmed;
    mapping(address => bool) members;
    function getBalanceToMint(address _address) public view {
                  require(totalTransactions>=1);


    }

}
pragma solidity ^0.4.16;

contract BigToken {
    string name = "Big Token";
    string symbol = "BIG";
    uint256 decimals = 18;
    uint256 mintPerBlock = 333333333333333;
    struct BigTransaction {
        uint blockNumber;
        uint256 amount;
    }

    uint commissionPercent = 10;
    uint256 totalTransactions = 0;
    bool enabledMint = true;
    uint256 totalMembers;
    mapping(address => mapping(address => uint256)) allowed;
    mapping(uint256 => BigTransaction) transactions;
    mapping(address => uint256) balances;
    mapping(address => uint) lastMint;
    mapping(address => bool) invested;
    mapping(address => bool) confirmed;
    mapping(address => bool) members;
    function getBalanceToMint(address _address) public view {
                  require(totalTransactions>=1);


    }

}
