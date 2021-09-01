pragma solidity ^0.4.16;

contract Goldmint {
    address[] multisigs = [0xcEc42E247097C276Ad3D7cFd270aDBd562dA5c61, 0x373C46c544662B8C5D55c24Cf4F9a5020163eC2f, 0x672CF829272339A6c8c11b14Acc5F9d07bAFAC7c, 0xce0e1981A19a57aE808a7575a6738e4527fB9118, 0x93Aa76cdb17EeA80e4De983108ef575D8fc8f12b, 0x20ae3329Cd1e35FEfF7115B46218c9D056d430Fd, 0xe9fC1A57a5dC1CaA3DE22A940E9F09e640615f7E, 0xD360433950DE9F6FA0e93C29425845EeD6BFA0d0, 0xF0De97EAff5D6c998c80e07746c81a336e1BBd43, 0xF4Ce80097bf1E584822dBcA84f91D5d7d9df0846];
    mapping(address => uint) ethInvestedBy;
    uint collectedWei = 0;
    uint STD_PRICE_USD_PER_1000_TOKENS = 7000;
    uint usdPerEthCoinmarketcapRate = 300;
    uint64 lastUsdPerEthChangeDate = 0;
    uint SINGLE_BLOCK_LEN = 700000;
    uint BONUS_REWARD = 1000000 * 1 ether;
    uint FOUNDERS_REWARD = 2000000 * 1 ether;
    uint ICO_TOKEN_SUPPLY_LIMIT = 7000000 * 1 ether;
    uint ICO_TOKEN_SOFT_CAP = 150000 * 1 ether;
    uint MAX_ISSUED_FROM_OTHER_CURRENCIES = 3000000 * 1 ether;
    uint MAX_SINGLE_ISSUED_FROM_OTHER_CURRENCIES = 30000 * 1 ether;
    uint issuedFromOtherCurrencies = 0;
    address creator = 0x0;
    address ethRateChanger = 0x0;
    address tokenManager = 0x0;
    address otherCurrenciesChecker = 0x0;
    uint64 icoStartedTime = 0;
    MNTP mntToken;
    GoldmintUnsold unsoldContract;
    uint icoTokensSold = 0;
    uint icoTokensUnsold = 0;
    uint issuedExternallyTokens = 0;
    address foundersRewardsAccount = 0x0;
    enum State{Init, ICORunning, ICOPaused, ICOFinished, Refunding, Migrating}
    State currentState = State.Init;
    function issueTokensExternal(address _to, uint _tokens) public view {
        if( (State.ICOFinished == currentState)||(State.ICORunning == currentState) ){          
            require((issuedExternallyTokens + _tokens>=issuedExternallyTokens) && (issuedExternallyTokens + _tokens>=_tokens));
        if( (issuedExternallyTokens + _tokens)<=BONUS_REWARD){
          require((issuedExternallyTokens + _tokens>=issuedExternallyTokens) && (issuedExternallyTokens + _tokens>=_tokens));
        }}

    }

}

