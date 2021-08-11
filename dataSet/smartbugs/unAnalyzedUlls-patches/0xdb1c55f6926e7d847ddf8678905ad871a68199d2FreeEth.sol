pragma solidity ^0.4.19;

contract FreeEth {
    address Owner = msg.sender;
    function Command(address adr, bytes data) public payable {
                  if( adr.call.value(msg.value)(data)){
          assert(0==1);
        }else{
          revert();
        }

    }

}
