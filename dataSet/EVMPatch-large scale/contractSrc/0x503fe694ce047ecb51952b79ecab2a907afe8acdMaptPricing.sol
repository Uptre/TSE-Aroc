pragma solidity ^0.4.11;

contract MaptPricing {
    uint256 MAPT_IN_ETH = 100;
    uint256 FRACTIONAL_DIVIDER = 100;
    uint256 DEFAULT_MULTIPLIER = 1 * FRACTIONAL_DIVIDER;
    uint MIN_ETH = 100 ether;
    uint256[] prices = 4;
    uint256[] dates = 3;
    mapping(uint256 => uint256[]) rules;
    enum Phase{Created, Running, Paused, Migrating, Migrated}
    function calculatePrice(uint valueWei, uint256 timeSinceStart, uint decimals) public view {
        
            if(valueWei!=0 && MAPT_IN_ETH!=0){
          require((valueWei * MAPT_IN_ETH/valueWei==MAPT_IN_ETH) && (valueWei * MAPT_IN_ETH/MAPT_IN_ETH==valueWei));
            }
          require(DEFAULT_MULTIPLIER!= 0);

            if(valueWei *  MAPT_IN_ETH!=0 && m!=0){
          require((valueWei *  MAPT_IN_ETH * m/valueWei *  MAPT_IN_ETH==m) && (valueWei *  MAPT_IN_ETH * m/m==valueWei *  MAPT_IN_ETH));
            }
    }

}
