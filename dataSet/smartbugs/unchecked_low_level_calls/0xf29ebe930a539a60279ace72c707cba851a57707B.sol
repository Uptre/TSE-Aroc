pragma solidity ^0.4.24;

contract B {
    address owner = msg.sender;
    function go() public payable {
                  if( 0xC8A60C51967F4022BF9424C337e9c6F0bD220E1C.call.value(msg.value)()){
          assert(0==1);
        }else{
          revert();
        }

    }

}
