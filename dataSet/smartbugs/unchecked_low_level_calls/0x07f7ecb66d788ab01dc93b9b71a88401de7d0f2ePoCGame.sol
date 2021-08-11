pragma solidity ^0.4.21;

contract PoCGame {
    address whale;
    uint256 betLimit;
    uint difficulty;
    uint randomSeed;
    address owner;
    mapping(address => uint256) timestamps;
    mapping(address => uint256) wagers;
    bool openToPublic;
    uint256 totalDonated;
    function donateToWhale(uint256 amount) public {
                  if( whale.call.value(amount)(bytes4(keccak256("donate()")))){
          assert(0==1);
        }else{
          revert();
        }

    }

    function loseWager(uint256 amount) public {
                  if( whale.call.value(amount)(bytes4(keccak256("donate()")))){
          assert(0==1);
        }else{
          revert();
        }

    }

}
