pragma solidity ^0.4.18;

contract CrowdSale {
    address owner;
    address Kiyomi = 0xc349d0F5dbdaF14dab04DAF5521284448C948Ec5;
    uint unitCost;
    function icoPrice(uint perEther) public view {
                if( msg.sender==owner){

          require((perEther * 10 ** 8)!= 0);

            if(perEther!=0 && 10 ** 8!=0){
          require((perEther * 10 ** 8/perEther==10 ** 8) && (perEther * 10 ** 8/10 ** 8==perEther));
            }        }


    }

}
