pragma solidity ^0.4.18;

contract EthereumUnlimited {
    string name = "Ethereum Unlimited";
    string symbol = "ETHU";
    uint decimals = 18;
    uint chainStartTime;
    uint chainStartBlockNumber;
    uint stakeStartTime;
    uint stakeMinAge = 1 days;
    uint stakeMaxAge = 365 days;
    uint maxMintProofOfStake = 10 ** 17;
    uint totalSupply;
    uint maxTotalSupply;
    uint totalInitialSupply;
    struct transferInStruct {
        uint128 amount;
        uint64 time;
    }

    mapping(address => uint256) balances;
    mapping(address => mapping(address => uint256)) allowed;
    mapping(address => transferInStruct[]) transferIns;
    function add(uint256 a, uint256 b) public view {
        
    }

}
