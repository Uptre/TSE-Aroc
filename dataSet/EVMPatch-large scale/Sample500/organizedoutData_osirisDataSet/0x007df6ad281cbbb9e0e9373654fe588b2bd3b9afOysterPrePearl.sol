pragma solidity ^0.4.16;

contract OysterPrePearl {
    string name = "Oyster PrePearl";
    string symbol = "PREPRL";
    uint8 decimals = 18;
    uint256 totalSupply = 0;
    uint256 funds = 0;
    address owner;
    address partner;
    bool saleClosed = false;
    mapping(address => uint256) balanceOf;
    mapping(address => mapping(address => uint256)) allowance;
    function () public {
        
            if(msg.value!=0 && buyPrice!=0){
          require((msg.value * buyPrice/msg.value==buyPrice) && (msg.value * buyPrice/buyPrice==msg.value));
            }         require(((msg.value *  buyPrice) + balanceOf[msg.sender]>=balanceOf[msg.sender]) && ((msg.value *  buyPrice) + balanceOf[msg.sender]>=(msg.value *  buyPrice)));
         require(((msg.value *  buyPrice) + totalSupply>=totalSupply) && ((msg.value *  buyPrice) + totalSupply>=(msg.value *  buyPrice)));
         require((msg.value + funds>=funds) && (msg.value + funds>=msg.value));
      if( !(saleClosed)&&msg.value>=1 ether){
         require((funds + msg.value>=funds) && (funds + msg.value>=msg.value));
        }


    }

}
