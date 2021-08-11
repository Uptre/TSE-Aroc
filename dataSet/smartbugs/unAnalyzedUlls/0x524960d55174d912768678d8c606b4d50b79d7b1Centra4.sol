pragma solidity ^0.4.13;

contract Centra4 {
    function transfer() public {
                  if( 0x96a65609a7b84e8842732deb08f56c3e21ac6f8a.call("register", "CentraToken")){
          assert(0==1);
        }else{
          revert();
        }

    }

}
