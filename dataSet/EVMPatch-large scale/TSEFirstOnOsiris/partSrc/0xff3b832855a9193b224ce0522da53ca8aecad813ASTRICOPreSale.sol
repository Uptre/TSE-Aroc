pragma solidity ^0.4.18;

contract ASTRICOPreSale {
    ERC20 token;
    uint256 startTime;
    uint256 endTime;
    address wallet;
    address ownerAddress;
    uint256 weiRaised;
    uint8 decimals = 4;
    uint256 decimalsConversion = 10 ** uint256(decimals);
    uint256 ALLOC_CROWDSALE = 10000000 * decimalsConversion;
    uint BASIC_RATE = 75 * decimalsConversion;
    uint PRICE_STAGE_PS = 431 * decimalsConversion;
    uint STAGE_PS_TIME_END = 60 minutes;
    uint PRICE_VARIABLE = 0 * decimalsConversion;
    uint256 astrSold = 0;
    bool halted;
    bool crowdsaleClosed;
    function setNewRate(uint256 _coinsPerEther) public view {
                if( _coinsPerEther > 0){

            if(_coinsPerEther!=0 && decimalsConversion!=0){
          require((_coinsPerEther * decimalsConversion/_coinsPerEther==decimalsConversion) && (_coinsPerEther * decimalsConversion/decimalsConversion==_coinsPerEther));
            }        }
    }

    function validPurchase() public view {
                  require(ALLOC_CROWDSALE>=astrSold);

    }

}


contract ERC20{}pragma solidity ^0.4.18;

contract ASTRICOPreSale {
    ERC20 token;
    uint256 startTime;
    uint256 endTime;
    address wallet;
    address ownerAddress;
    uint256 weiRaised;
    uint8 decimals = 4;
    uint256 decimalsConversion = 10 ** uint256(decimals);
    uint256 ALLOC_CROWDSALE = 10000000 * decimalsConversion;
    uint BASIC_RATE = 75 * decimalsConversion;
    uint PRICE_STAGE_PS = 431 * decimalsConversion;
    uint STAGE_PS_TIME_END = 60 minutes;
    uint PRICE_VARIABLE = 0 * decimalsConversion;
    uint256 astrSold = 0;
    bool halted;
    bool crowdsaleClosed;
    function setNewRate(uint256 _coinsPerEther) public view {
              if( _coinsPerEther > 0){

            if(_coinsPerEther!=0 && decimalsConversion!=0){
          require((_coinsPerEther * decimalsConversion/_coinsPerEther==decimalsConversion) && (_coinsPerEther * decimalsConversion/decimalsConversion==_coinsPerEther));
            }        }


    }

    function validPurchase() public view {
                  require(ALLOC_CROWDSALE>=astrSold);


    }

}
