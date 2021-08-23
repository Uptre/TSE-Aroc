pragma  solidity  ^0.4.16;

contract BancorChanger {
    uint32 MAX_CRR = 1000000;
    uint32 MAX_CHANGE_FEE = 1000000;
    struct Reserve {
        uint256 virtualBalance;
        uint32 ratio;
        bool isVirtualBalanceEnabled;
        bool isPurchaseEnabled;
        bool isSet;
    }

    string version = '0.3';
    string changerType = 'bancor';
    IBancorFormula formula;
    IERC20Token[] reserveTokens;
    IERC20Token[] quickBuyPath;
    mapping(address => Reserve) reserves;
    uint32 totalReserveRatio = 0;
    uint32 maxChangeFee = 0;
    uint32 changeFee = 0;
    bool changingEnabled = true;
    function addReserve(IERC20Token _token, uint32 _ratio, bool _enableVirtualBalance) public view {
                 require((totalReserveRatio + _ratio>=totalReserveRatio) && (totalReserveRatio + _ratio>=_ratio));
        if( _token != token &&  !reserves[_token].isSet&&totalReserveRatio + _ratio <=  MAX_CRR){
         require((_ratio + totalReserveRatio>=totalReserveRatio) && (_ratio + totalReserveRatio>=_ratio));
        }


    }

}
