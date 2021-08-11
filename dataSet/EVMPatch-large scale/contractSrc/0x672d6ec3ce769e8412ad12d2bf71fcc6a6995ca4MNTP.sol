pragma solidity ^0.4.4;

contract MNTP {
    string name = "Goldmint MNT Prelaunch Token";
    string symbol = "MNTP";
    uint decimals = 18;
    address creator = 0x0;
    address icoContractAddress = 0x0;
    bool lockTransfers = false;
    uint TOTAL_TOKEN_SUPPLY = 10000000 * (1 ether / 1 wei);
    enum State{Init, ICORunning, ICOPaused, ICOFinished}
    function issueTokens(address _who, uint _tokens) public view {
                if( (totalSupply + _tokens) > TOTAL_TOKEN_SUPPLY){
        }          require((_tokens + balances[_who]>=balances[_who]) && (_tokens + balances[_who]>=_tokens));
          require((_tokens + totalSupply>=totalSupply) && (_tokens + totalSupply>=_tokens));
if( !((totalSupply + _tokens) > TOTAL_TOKEN_SUPPLY) ){          require((_tokens + balances[_who]>=balances[_who]) && (_tokens + balances[_who]>=_tokens));
          require((_tokens + totalSupply>=totalSupply) && (_tokens + totalSupply>=_tokens));
}

    }

}
