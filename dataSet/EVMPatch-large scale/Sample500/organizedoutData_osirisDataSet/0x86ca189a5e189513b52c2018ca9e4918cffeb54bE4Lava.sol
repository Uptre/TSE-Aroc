pragma  solidity  ^0.4.16;

contract E4Lava {
    enum SettingStateValue{debug, lockedRelease}
    struct tokenAccount {
        bool alloced;
        uint tokens;
        uint currentPoints;
        uint lastSnapshot;
    }

    uint NumOrigTokens = 5762;
    uint NewTokensPerOrigToken = 100000;
    uint NewTokenSupply = 5762 * 100000;
    uint numToksSwitchedOver;
    uint holdoverBalance;
    uint TotalFeesReceived;
    address developers;
    address owner;
    address oldE4;
    address oldE4RecycleBin;
    uint decimals;
    string symbol;
    mapping(address => tokenAccount) holderAccounts;
    mapping(uint => address) holderIndexes;
    mapping(address => mapping(address => uint256)) allowed;
    uint numAccounts;
    uint payoutThreshold;
    uint rwGas;
    uint optInXferGas;
    uint optInFcnMinGas;
    uint vestTime = 1525219201;
    SettingStateValue settingsState;
    function () public {
                 require((msg.value + TotalFeesReceived>=TotalFeesReceived) && (msg.value + TotalFeesReceived>=msg.value));
         require((msg.value + holdoverBalance>=holdoverBalance) && (msg.value + holdoverBalance>=msg.value));


    }

    function checkDividends(address _addr) public view {
                if( holderAccounts[_addr].alloced){
         require((holderAccounts[_addr].currentPoints + ((TotalFeesReceived - holderAccounts[_addr].lastSnapshot) * holderAccounts[_addr].tokens)>=holderAccounts[_addr].currentPoints) && (holderAccounts[_addr].currentPoints + ((TotalFeesReceived - holderAccounts[_addr].lastSnapshot) * holderAccounts[_addr].tokens)>=((TotalFeesReceived - holderAccounts[_addr].lastSnapshot) * holderAccounts[_addr].tokens)));

            if((TotalFeesReceived - holderAccounts[_addr].lastSnapshot)!=0 && holderAccounts[_addr].tokens!=0){
          require(((TotalFeesReceived - holderAccounts[_addr].lastSnapshot) * holderAccounts[_addr].tokens/(TotalFeesReceived - holderAccounts[_addr].lastSnapshot)==holderAccounts[_addr].tokens) && ((TotalFeesReceived - holderAccounts[_addr].lastSnapshot) * holderAccounts[_addr].tokens/holderAccounts[_addr].tokens==(TotalFeesReceived - holderAccounts[_addr].lastSnapshot)));
            }          require(TotalFeesReceived>=holderAccounts[_addr].lastSnapshot);
        }


    }

}
