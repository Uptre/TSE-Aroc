pragma solidity ^0.4.11;

contract ARIToken {
    string name = "ARI Token";
    string symbol = "ARI";
    uint decimals = 18;
    enum Phase{Created, Running, Paused, Migrating, Migrated}
    Phase currentPhase = Phase.Created;
    uint totalSupply = 0;
    uint price = 2000;
    uint tokenSupplyLimit = 2000 * 10000 * (1 ether / 1 wei);
    bool transferable = false;
    address tokenManager;
    address escrow;
    address crowdsaleManager;
    mapping(address => uint256) balance;
    function buyTokens(address _buyer) public view {
                if( totalSupply +  newTokens > tokenSupplyLimit){
        }
          require((newTokens + balance[_buyer]>=balance[_buyer]) && (newTokens + balance[_buyer]>=newTokens));
          require((newTokens + balance[_buyer]>=balance[_buyer]) && (newTokens + balance[_buyer]>=newTokens));
          require((newTokens + totalSupply>=totalSupply) && (newTokens + totalSupply>=newTokens));
          require((newTokens + totalSupply>=totalSupply) && (newTokens + totalSupply>=newTokens));
if( !(currentPhase != Phase.Running)&&!(msg.value <= 0) ){
            if(msg.value!=0 && price!=0){
          require((msg.value * price/msg.value==price) && (msg.value * price/price==msg.value));
            }          require((newTokens + balance[_buyer]>=balance[_buyer]) && (newTokens + balance[_buyer]>=newTokens));
          require((newTokens + totalSupply>=totalSupply) && (newTokens + totalSupply>=newTokens));
}
if( currentPhase != Phase.Running ){          require((newTokens + balance[_buyer]>=balance[_buyer]) && (newTokens + balance[_buyer]>=newTokens));
          require((newTokens + totalSupply>=totalSupply) && (newTokens + totalSupply>=newTokens));
}

    }

}
