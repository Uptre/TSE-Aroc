pragma  solidity  ^0.4.16;

contract Savings {
    uint periods;
    uint t0special;
    uint intervalSecs = 30 days;
    uint precision = 10 ** 18;
    bool inited;
    bool locked;
    uint startBlockTimestamp = 0;
    Token token;
    mapping(address => uint) deposited;
    uint totalfv;
    uint remainder;
    uint total;
    mapping(address => uint256) withdrawn;
    bool nullified;
    uint mintingNonce;
    function _withdrawTo(uint _deposit, uint _withdrawn, uint _blockTimestamp, uint _total) public view {
        
          require(precision!= 0);

          require(totalfv!= 0);

            if(_deposit * availableForWithdrawalAt(_blockTimestamp)!=0 && _total!=0){
          require((_deposit * availableForWithdrawalAt(_blockTimestamp) * _total/_deposit * availableForWithdrawalAt(_blockTimestamp)==_total) && (_deposit * availableForWithdrawalAt(_blockTimestamp) * _total/_total==_deposit * availableForWithdrawalAt(_blockTimestamp)));
            }
            if(_deposit!=0 && availableForWithdrawalAt(_blockTimestamp)!=0){
          require((_deposit * availableForWithdrawalAt(_blockTimestamp)/_deposit==availableForWithdrawalAt(_blockTimestamp)) && (_deposit * availableForWithdrawalAt(_blockTimestamp)/availableForWithdrawalAt(_blockTimestamp)==_deposit));
            }

    }

    function availableForWithdrawalAt(uint256 blockTimestamp) public view {
        
          require((t0special + periods)!= 0);
         require((t0special + periods>=t0special) && (t0special + periods>=periods));


    }

}
