pragma solidity ^0.4.9;

contract LegendsCrowdfund {
    address creator;
    address exitAddress;
    uint start;
    uint limitVIP;
    LegendsToken legendsToken;
    mapping(address => uint) recipientETH;
    mapping(address => uint) recipientVIP;
    uint totalETH;
    uint totalVIP;
    function purchaseMembership(address sender, address recipient) public view {
        
          require(9!= 0);

            /*if(VIP!=0 && 10!=0){
          require((VIP * 10/VIP==10) && (VIP * 10/10==VIP));
            }         require((VIP + recipientVIP[recipient]>=recipientVIP[recipient]) && (VIP + recipientVIP[recipient]>=VIP));
         require((VIP + totalVIP>=totalVIP) && (VIP + totalVIP>=VIP));*/

if( !(msg.sender != address(legendsToken))&&!(!exitAddress.send(msg.value)) ){

            if(msg.value!=0 && 10!=0){
          require((msg.value * 10/msg.value==10) && (msg.value * 10/10==msg.value));
            }         require((msg.value + recipientETH[recipient]>=recipientETH[recipient]) && (msg.value + recipientETH[recipient]>=msg.value));
         require((msg.value + totalETH>=totalETH) && (msg.value + totalETH>=msg.value));
}


    }

}
