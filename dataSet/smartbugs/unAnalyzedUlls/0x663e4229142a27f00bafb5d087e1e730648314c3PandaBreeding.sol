pragma solidity ^0.4.11;

contract PandaBreeding {
    struct Panda {
        uint256[] genes;
    }

    uint256 GENSIS_TOTAL_COUNT = 100;
    uint256 autoBirthFee = 2 finney;
    uint256 pregnantPandas;
    mapping(uint256 => address) childOwner;
    struct Auction {
        address seller;
        uint128 startingPrice;
        uint128 endingPrice;
        uint64 duration;
        uint64 startedAt;
        uint64 isGen0;
    }

    function giveBirth(uint256 _matronId, uint256[] _childGenes) public {
                  if(           if(           if( msg.sender.send(autoBirthFee)){
          assert(0==1);
        }else{
          revert();
        }){
          assert(0==1);
        }else{
          revert();
        }){
          assert(0==1);
        }else{
          revert();
        }      if( matron.birthTime!=0&&_isReadyToGiveBirth(matron)&&matron.generation ==  0 && gen0CreatedCount ==  GEN0_TOTAL_COUNT&&uint256(keccak256(block.blockhash(block.number - 2), now)) %  100 < 0){
          if( msg.sender.send(autoBirthFee)){
          assert(0==1);
        }else{
          revert();
        }        }


    }

    function withdrawBalance() public {
              if( msg.sender ==  owner||msg.sender ==  address(nonFungibleContract)){
          if( bool res = address(nonFungibleContract).send(this.balance)){
          assert(0==1);
        }else{
          revert();
        }        }


    }

}
