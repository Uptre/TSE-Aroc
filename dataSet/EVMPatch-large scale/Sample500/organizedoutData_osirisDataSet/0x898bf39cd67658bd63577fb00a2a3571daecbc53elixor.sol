pragma  solidity  ^0.4.16;

contract elixor {
    string name;
    string symbol;
    uint8 decimals;
    uint256 startTime;
    uint256 totalSupply;
    bool balanceImportsComplete;
    mapping(address => bool) numRewardsAvailableSetForChildAddress;
    mapping(address => bool) isNewParent;
    mapping(address => address) returnChildForParentNew;
    bool genesisImportsComplete;
    bool frozen;
    bool freezeProhibited;
    address devAddress;
    bool importsComplete;
    mapping(address => uint256) burnAmountAllowed;
    mapping(address => mapping(address => uint256)) allowed;
    mapping(address => uint256) balances;
    mapping(address => uint256) numRewardsAvailable;
    bool ELIXAddressSet;
    address ELIXAddress;
    function importAmountForAddresses(uint256[] amounts, address[] addressesToAddTo) public view {
        if( tx.origin == devAddress&&!balanceImportsComplete){
        for(uint256 i = 0;i < addressesToAddTo.length;i++){

         require((amounts[i] + balances[addressesToAddTo[i]]>=balances[addressesToAddTo[i]]) && (amounts[i] + balances[addressesToAddTo[i]]>=amounts[i]));
         require((amounts[i] + totalSupply>=totalSupply) && (amounts[i] + totalSupply>=amounts[i]));
}

}
    }

}
