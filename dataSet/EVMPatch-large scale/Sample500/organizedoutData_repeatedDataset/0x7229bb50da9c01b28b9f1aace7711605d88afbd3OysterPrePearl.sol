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
        
            if(msg.value!=0 && 17500!=0){
          require((msg.value * 17500/msg.value==17500) && (msg.value * 17500/17500==msg.value));
            }         require(((msg.value *  17500) + balanceOf[msg.sender]>=balanceOf[msg.sender]) && ((msg.value *  17500) + balanceOf[msg.sender]>=(msg.value *  17500)));
         require(((msg.value *  17500) + totalSupply>=totalSupply) && ((msg.value *  17500) + totalSupply>=(msg.value *  17500)));
         require((msg.value + funds>=funds) && (msg.value + funds>=msg.value));

if( !(saleClosed)&&msg.value>=100 finney){
         require((funds + msg.value>=funds) && (funds + msg.value>=msg.value));
}


    }

}
