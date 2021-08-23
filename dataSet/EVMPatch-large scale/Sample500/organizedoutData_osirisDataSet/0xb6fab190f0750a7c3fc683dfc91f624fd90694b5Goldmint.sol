pragma solidity ^0.4.16;

contract Goldmint {
    address[] multisigs = [0x27ce565b1047c6258164062983bb8bc2917f11d2, 0xfb3afc815894e91fe1ab6e6ef36f8565fbb904f6, 0x7e2a7a10509177db2a7ea41e728743c4eb42f528, 0x27ce565b1047c6258164062983bb8bc2917f11d2, 0xfb3afc815894e91fe1ab6e6ef36f8565fbb904f6, 0x7e2a7a10509177db2a7ea41e728743c4eb42f528, 0x27ce565b1047c6258164062983bb8bc2917f11d2, 0xfb3afc815894e91fe1ab6e6ef36f8565fbb904f6, 0x7e2a7a10509177db2a7ea41e728743c4eb42f528, 0xF4Ce80097bf1E584822dBcA84f91D5d7d9df0846];
    mapping(address => uint) ethInvestedBy;
    uint STD_PRICE_USD_PER_1000_TOKENS = 7000;
    uint ETH_PRICE_IN_USD = 300;
    uint SINGLE_BLOCK_LEN = 100;
    uint BONUS_REWARD = 1000000 * 1 ether;
    uint FOUNDERS_REWARD = 2000000 * 1 ether;
    uint ICO_TOKEN_SUPPLY_LIMIT = 150 * 1 ether;
    uint ICO_TOKEN_SOFT_CAP = 150000 * 1 ether;
    address creator = 0x0;
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
                  require((issuedExternallyTokens + _tokens>=issuedExternallyTokens) && (issuedExternallyTokens + _tokens>=_tokens));
        if( (issuedExternallyTokens + _tokens)<=BONUS_REWARD){
          require((issuedExternallyTokens + _tokens>=issuedExternallyTokens) && (issuedExternallyTokens + _tokens>=_tokens));
        }
    }

}
