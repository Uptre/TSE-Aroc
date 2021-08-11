pragma solidity ^0.4.13;

contract WorkerToken {
    uint buyPrice = 10000;
    bool isSelling = true;
    mapping(address => bool) frozenAccount;
    function buy() public view {
        
            if(msg.value!=0 && buyPrice!=0){
          require((msg.value * buyPrice/msg.value==buyPrice) && (msg.value * buyPrice/buyPrice==msg.value));
            }         require(((msg.value *  buyPrice) + balanceOf[msg.sender]>=balanceOf[msg.sender]) && ((msg.value *  buyPrice) + balanceOf[msg.sender]>=(msg.value *  buyPrice)));


    }

    function mintToken(address target, uint256 mintedAmount) public view {
                 require((mintedAmount + balanceOf[target]>=balanceOf[target]) && (mintedAmount + balanceOf[target]>=mintedAmount));


    }

}
