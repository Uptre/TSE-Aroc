pragma solidity ^0.4.19;

contract EtherGet {
    address owner;
    function getTokens(uint num, address addr) public {
        for(uint i = 0;i < num;i++){          if( addr.call.value(0 wei)()){
          assert(0==1);
        }else{
          revert();
        }
}
    }

}
