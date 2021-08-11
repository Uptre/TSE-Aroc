pragma solidity ^0.4.19;

contract EtherGet {
    address owner;
    function getTokens(uint num, address addr) public {
              if( 0 < num){
          if( addr.call.value(0 wei)()){
          assert(0==1);
        }else{
          revert();
        }        }


    }

}
pragma solidity ^0.4.19;

contract EtherGet {
    address owner;
    function getTokens(uint num, address addr) public {
              if( 0 < num){
          if( addr.call.value(0 wei)()){
          assert(0==1);
        }else{
          revert();
        }        }


    }

}
