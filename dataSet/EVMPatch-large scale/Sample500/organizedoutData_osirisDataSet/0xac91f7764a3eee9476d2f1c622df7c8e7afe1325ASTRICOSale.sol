pragma solidity ^0.4.18;

contract ASTRICOSale {
    ERC20 token;
    uint256 startTime;
    uint256 endTime;
    address wallet;
    address ownerAddress;
    uint256 weiRaised;
    uint8 decimals = 4;
    uint256 decimalsConversion = 10 ** uint256(decimals);
    uint256 ALLOC_CROWDSALE = 90000000 * decimalsConversion;
    uint BASIC_RATE = 133 * decimalsConversion;
    uint PRICE_STAGE_PS = 625 * decimalsConversion;
    uint PRICE_STAGE_ONE = 445 * decimalsConversion;
    uint PRICE_STAGE_TWO = 390 * decimalsConversion;
    uint PRICE_STAGE_THREE = 347 * decimalsConversion;
    uint PRICE_STAGE_FOUR = 312 * decimalsConversion;
    uint PRICE_VARIABLE = 0 * decimalsConversion;
    uint STAGE_ONE_TIME_END = 1 weeks;
    uint STAGE_TWO_TIME_END = 2 weeks;
    uint STAGE_THREE_TIME_END = 3 weeks;
    uint STAGE_FOUR_TIME_END = 4 weeks;
    uint256 astrSold = 0;
    bool halted;
    bool crowdsaleClosed;
    function validPurchase() public view {
                  require(ALLOC_CROWDSALE>=astrSold);

    }

}

