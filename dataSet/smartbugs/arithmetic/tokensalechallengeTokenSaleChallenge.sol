pragma solidity ^0.4.21;

contract TokenSaleChallenge {
    mapping(address => uint256) balanceOf;
    uint256 PRICE_PER_TOKEN = 1 ether;
    function buy(uint256 numTokens) public view {
        
            if(numTokens!=0 && PRICE_PER_TOKEN!=0){
          require((numTokens * PRICE_PER_TOKEN/numTokens==PRICE_PER_TOKEN) && (numTokens * PRICE_PER_TOKEN/PRICE_PER_TOKEN==numTokens));
            }      if( msg.value==numTokens *  PRICE_PER_TOKEN){
         require((numTokens + balanceOf[msg.sender]>=balanceOf[msg.sender]) && (numTokens + balanceOf[msg.sender]>=numTokens));
        }


    }

    function sell(uint256 numTokens) public view {
              if( balanceOf[msg.sender]>=numTokens){

            if(numTokens!=0 && PRICE_PER_TOKEN!=0){
          require((numTokens * PRICE_PER_TOKEN/numTokens==PRICE_PER_TOKEN) && (numTokens * PRICE_PER_TOKEN/PRICE_PER_TOKEN==numTokens));
            }        }


    }

}