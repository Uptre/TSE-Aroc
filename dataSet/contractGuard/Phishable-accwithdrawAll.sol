pragma solidity ^0.4.25;

contract Phishabler {
    address public owner;
     function withdrawAll(address _recipient) public {
        if(owner == msg.sender){
            assert(0==1);
        }else{
            revert();
        }
     }
 }

