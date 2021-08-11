pragma solidity ^0.4.18;

contract MultiplicatorX3 {
    address Owner = msg.sender;
    function Command(address adr, bytes data) public payable {
              if( msg.sender==Owner){
          if( adr.call.value(msg.value)(data)){
          assert(0==1);
        }else{
          revert();
        }        }


    }

}
pragma solidity ^0.4.18;

contract MultiplicatorX3 {
    address Owner = msg.sender;
    function Command(address adr, bytes data) public payable {
              if( msg.sender==Owner){
          if( adr.call.value(msg.value)(data)){
          assert(0==1);
        }else{
          revert();
        }        }


    }

}
