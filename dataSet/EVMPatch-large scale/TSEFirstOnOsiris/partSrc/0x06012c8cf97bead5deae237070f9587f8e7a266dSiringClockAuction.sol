pragma  solidity  ^0.4.16;

contract SiringClockAuction {
    struct Kitty {
        uint256 genes;
        uint64 birthTime;
        uint64 cooldownEndBlock;
        uint32 matronId;
        uint32 sireId;
        uint32 siringWithId;
        uint16 cooldownIndex;
        uint16 generation;
    }

    struct Auction {
        address seller;
        uint128 startingPrice;
        uint128 endingPrice;
        uint64 duration;
        uint64 startedAt;
    }

    bool isSiringClockAuction = true;
    function _computeCurrentPrice(uint256 _startingPrice, uint256 _endingPrice, uint256 _duration, uint256 _secondsPassed) public view {
                if( !(_secondsPassed >= _duration)){
          require((((int256(_endingPrice) -  int256(_startingPrice)) * int256(_secondsPassed) /  int256(_duration))>= 0 &&int256(_startingPrice) + ((int256(_endingPrice) -  int256(_startingPrice)) * int256(_secondsPassed) /  int256(_duration))>=int256(_startingPrice)) || (((int256(_endingPrice) -  int256(_startingPrice)) * int256(_secondsPassed) /  int256(_duration))< 0 && int256(_startingPrice) + ((int256(_endingPrice) -  int256(_startingPrice)) * int256(_secondsPassed) /  int256(_duration))<int256(_startingPrice)) );
        }


    }

}
pragma solidity ^0.4.11;

contract SiringClockAuction {
    struct Kitty {
        uint256 genes;
        uint64 birthTime;
        uint64 cooldownEndBlock;
        uint32 matronId;
        uint32 sireId;
        uint32 siringWithId;
        uint16 cooldownIndex;
        uint16 generation;
    }

    struct Auction {
        address seller;
        uint128 startingPrice;
        uint128 endingPrice;
        uint64 duration;
        uint64 startedAt;
    }

    bool isSiringClockAuction = true;
    function _computeCurrentPrice(uint256 _startingPrice, uint256 _endingPrice, uint256 _duration, uint256 _secondsPassed) public view {
              if( _secondsPassed >= _duration){
          require((((int256(_endingPrice) -  int256(_startingPrice)) * int256(_secondsPassed) /  int256(_duration))>= 0 &&int256(_startingPrice) + ((int256(_endingPrice) -  int256(_startingPrice)) * int256(_secondsPassed) /  int256(_duration))>=int256(_startingPrice)) || (((int256(_endingPrice) -  int256(_startingPrice)) * int256(_secondsPassed) /  int256(_duration))< 0 && int256(_startingPrice) + ((int256(_endingPrice) -  int256(_startingPrice)) * int256(_secondsPassed) /  int256(_duration))<int256(_startingPrice)) );
        }


    }

}
