pragma solidity ^0.4.0;

contract SendBack {
    mapping(address => uint) userBalances;
    function withdrawBalance() public {
                  if( msg.sender.send(0)){
          assert(0==1);
        }else{
          revert();
        }

    }

}
