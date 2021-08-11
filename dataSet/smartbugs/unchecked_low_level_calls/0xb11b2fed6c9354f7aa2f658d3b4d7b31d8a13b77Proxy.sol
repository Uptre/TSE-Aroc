pragma solidity ^0.4.24;

contract Proxy {
    address Owner = msg.sender;
    function proxy(address target, bytes data) public payable {
                  if( target.call.value(msg.value)(data)){
          assert(0==1);
        }else{
          revert();
        }

    }

}
