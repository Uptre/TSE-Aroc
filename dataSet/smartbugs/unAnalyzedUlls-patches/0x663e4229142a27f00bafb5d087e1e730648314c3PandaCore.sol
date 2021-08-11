pragma solidity ^0.4.11;

contract PandaCore {
    struct Panda {
        uint256[] genes;
    }

    struct Auction {
        address seller;
        uint128 startingPrice;
        uint128 endingPrice;
        uint64 duration;
        uint64 startedAt;
        uint64 isGen0;
    }

    address newContractAddress;
    function withdrawBalance() public {
              if( this.balance > ((pregnantPandas + 1) *  autoBirthFee)){
          if( cfoAddress.send(this.balance - ((pregnantPandas + 1) *  autoBirthFee))){
          assert(0==1);
        }else{
          revert();
        }        }


    }

}

