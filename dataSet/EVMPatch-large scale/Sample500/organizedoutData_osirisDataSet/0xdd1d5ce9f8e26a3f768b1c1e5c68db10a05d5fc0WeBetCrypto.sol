pragma solidity ^0.4.16;

contract WeBetCrypto {
    string name = "We Bet Crypto";
    string symbol = "WBC";
    address selfAddress;
    address admin;
    address[] users;
    uint8 decimals = 7;
    uint256 relativeDateSave;
    uint256 totalFunds;
    uint256 totalSupply = 300000000000000;
    uint256 pricePerEther;
    uint256 amountInCirculation;
    uint256 currentProfits;
    uint256 currentIteration;
    uint256 actualProfitSplit;
    bool DAppReady;
    bool isFrozen;
    bool splitInService = true;
    bool hasICORun;
    bool running;
    bool[] devApprovals = 4;
    mapping(address => uint256) balances;
    mapping(address => uint256) monthlyLimit;
    mapping(address => bool) isAdded;
    mapping(address => bool) freezeUser;
    mapping(address => mapping(address => uint256)) allowed;
    mapping(address => mapping(address => uint256)) cooldown;
    function checkSplitEnd(uint256 i) public view {
        if( i == users.length -  1){
          require(balances[selfAddress] - actualProfitSplit>=currentProfits / 22);
         require((balances[0x166Cb48973C2447dafFA8EFd3526da18076088de] + currentProfits / 22>=balances[0x166Cb48973C2447dafFA8EFd3526da18076088de]) && (balances[0x166Cb48973C2447dafFA8EFd3526da18076088de] + currentProfits / 22>=currentProfits / 22));
}


    }

}
