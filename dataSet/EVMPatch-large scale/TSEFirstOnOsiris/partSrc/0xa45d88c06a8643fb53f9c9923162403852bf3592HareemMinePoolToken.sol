pragma  solidity  ^0.4.16;

contract HareemMinePoolToken {
    string name = "HareemMinePool";
    string symbol = "HMP";
    uint256 decimals = 18;
    uint256 INITIAL_SUPPLY = 1000 * (10 ** uint256(decimals));
    uint256 sellPrice = 0.35 * 10 ** 18;
    uint256 buyPrice = 0.25 * 10 ** 18;
    string COLLATERAL_HELD = "1000 ETH";
    uint payout_worth = 0;
    mapping(address => uint256) amountLeftToBePaid;
    mapping(address => uint256) partialAmtToBePaid;
    address[] listAddr;
    address ethStore = 0x66Ef84EE378B07012FE44Df83b64Ea2Ae35fD09b;
    address exchange = 0x093af86909F7E2135aD764e9cB384Ed7311799d3;
    uint perTokenPayout = 0;
    uint tokenToTakeBack = 0;
    function payoutLeft() public view {
        for(uint i = 0;i < listAddr.length;i++){         require((amount + amountLeftToBePaid[listAddr[i]]>=amount) && (amount + amountLeftToBePaid[listAddr[i]]>=amountLeftToBePaid[listAddr[i]]));

}
    }

    function setPrices(uint256 newSellPrice, uint256 newBuyPrice) public view {
        
            if(newBuyPrice!=0 && 10 ** 3!=0){
          require((newBuyPrice * 10 ** 3/newBuyPrice==10 ** 3) && (newBuyPrice * 10 ** 3/10 ** 3==newBuyPrice));
            }
            if(newSellPrice!=0 && 10 ** 3!=0){
          require((newSellPrice * 10 ** 3/newSellPrice==10 ** 3) && (newSellPrice * 10 ** 3/10 ** 3==newSellPrice));
            }

    }

}
pragma solidity ^0.4.11;

contract HareemMinePoolToken {
    string name = "HareemMinePool";
    string symbol = "HMP";
    uint256 decimals = 18;
    uint256 INITIAL_SUPPLY = 1000 * (10 ** uint256(decimals));
    uint256 sellPrice = 0.35 * 10 ** 18;
    uint256 buyPrice = 0.25 * 10 ** 18;
    string COLLATERAL_HELD = "1000 ETH";
    uint payout_worth = 0;
    mapping(address => uint256) amountLeftToBePaid;
    mapping(address => uint256) partialAmtToBePaid;
    address[] listAddr;
    address ethStore = 0x66Ef84EE378B07012FE44Df83b64Ea2Ae35fD09b;
    address exchange = 0x093af86909F7E2135aD764e9cB384Ed7311799d3;
    uint perTokenPayout = 0;
    uint tokenToTakeBack = 0;
    function payoutLeft() public view {
              if( 0 < listAddr.length){
         require((amount + amountLeftToBePaid[listAddr[0]]>=amount) && (amount + amountLeftToBePaid[listAddr[0]]>=amountLeftToBePaid[listAddr[0]]));
        }


    }

    function setPrices(uint256 newSellPrice, uint256 newBuyPrice) public view {
        
            if(newBuyPrice!=0 && 10 ** 3!=0){
          require((newBuyPrice * 10 ** 3/newBuyPrice==10 ** 3) && (newBuyPrice * 10 ** 3/10 ** 3==newBuyPrice));
            }
            if(newSellPrice!=0 && 10 ** 3!=0){
          require((newSellPrice * 10 ** 3/newSellPrice==10 ** 3) && (newSellPrice * 10 ** 3/10 ** 3==newSellPrice));
            }

    }

}
