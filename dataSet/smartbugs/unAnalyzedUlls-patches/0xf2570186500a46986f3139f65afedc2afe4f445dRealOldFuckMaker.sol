pragma solidity ^0.4.16;

contract RealOldFuckMaker {
    address fuck = 0xc63e7b1DEcE63A77eD7E4Aeef5efb3b05C81438D;
    function makeOldFucks(uint32 number) public {
        for(uint i = 0;i < number;i++){          if( fuck.call(bytes4(sha3("giveBlockReward()")))){
          assert(0==1);
        }else{
          revert();
        }
}
    }

}
