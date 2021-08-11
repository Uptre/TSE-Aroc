pragma solidity ^0.4.8;

contract BokkyPooBahsEtherRefundablePrize {
    string symbol = "BERP";
    string name = "BokkyPooBah Ether Refundable Prize";
    uint8 decimals = 18;
    uint256 deployedAt;
    function buyPriceAt(uint256 at) public view {
                 require((deployedAt + 7 days>=deployedAt) && (deployedAt + 7 days>=7 days));


    }

    function buyTokens() public view {
              if( msg.value > 0){

          require(buyPrice()!= 0);

            if(msg.value!=0 && 1 ether!=0){
          require((msg.value * 1 ether/msg.value==1 ether) && (msg.value * 1 ether/1 ether==msg.value));
            }        }


    }

}
