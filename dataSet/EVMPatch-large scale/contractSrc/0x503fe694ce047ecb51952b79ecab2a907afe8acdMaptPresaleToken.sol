pragma solidity ^0.4.11;

contract MaptPresaleToken {
    uint MIN_TRANSACTION_AMOUNT_ETH = 100 ether;
    MaptPricing priceRules = new MaptPricing();
    uint PRESALE_START_DATE = 1503313200;
    uint PRESALE_END_DATE = PRESALE_START_DATE + 30 days;
    string name = "MAT Presale Token";
    string symbol = "MAPT";
    uint decimals = 18;
    uint TOKEN_SUPPLY_LIMIT = 2800000 * 1 ether / 1 wei;
    enum Phase{Created, Running, Paused, Migrating, Migrated}
    Phase currentPhase = Phase.Created;
    uint totalSupply = 0;
    address tokenManager;
    address escrow;
    address crowdsaleManager;
    mapping(address => uint256) balanceTable;
    function burnTokens(address _owner) public view {
                if( currentPhase != Phase.Migrating&&balanceTable[_owner] == 0){
          require(totalSupply>=balanceTable[_owner]);
        }
    }

    function buyTokensForFiat(address _buyer, uint tokens) public view {
                if( currentPhase==Phase.Running&&tokens>0){
          require((totalSupply + tokens>=totalSupply) && (totalSupply + tokens>=tokens));
        }if( currentPhase==Phase.Running&&tokens>0&&totalSupply +  tokens<=TOKEN_SUPPLY_LIMIT ){          require((tokens + totalSupply>=totalSupply) && (tokens + totalSupply>=tokens));
          require((tokens + balanceTable[_buyer]>=balanceTable[_buyer]) && (tokens + balanceTable[_buyer]>=tokens));
}

    }

    function setStartDate(uint _date) public view {
                if( currentPhase != Phase.Created){
          require((_date + 30 days>=_date) && (_date + 30 days>=30 days));
        }
    }

}
