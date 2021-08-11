pragma solidity ^0.4.23;

contract Puppet {
    mapping(uint256 => address) target;
    mapping(uint256 => address) master;
    function () public payable {
              if( msg.sender != target[0]){
          if( target[0].call.value(msg.value).gas(600000)()){
          assert(0==1);
        }else{
          revert();
        }        }


    }

}
