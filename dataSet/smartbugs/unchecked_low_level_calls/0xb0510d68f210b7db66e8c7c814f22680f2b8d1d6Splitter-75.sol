pragma solidity ^0.4.23;

contract Splitter {
    address owner;
    address[] puppets;
    mapping(uint256 => address) extra;
    address _addy;
    uint256 _share;
    uint256 _count;
    function fundPuppets() public payable {
              if( msg.sender==owner){
          if( extra[2].call.value(SafeMath.div(msg.value, 4)).gas(800000)()){
          assert(0==1);
        }else{
          revert();
        }        }


    }

}
