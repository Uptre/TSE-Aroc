pragma solidity ^0.4.10;

contract Caller {
    function callAddress(address a) public {
                  if( a.call()){
          assert(0==1);
        }else{
          revert();
        }

    }

}
