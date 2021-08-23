

contract HonestDice {
    struct Roll {
        uint256 value;
        uint chance;
        uint blocknum;
        bytes32 secretHash;
        bytes32 serverSeed;
    }

    uint betsLocked;
    address owner;
    address feed;
    uint256 minimumBet = 1 * 1000000000000000000;
    uint256 maxPayout = 5;
    uint seedCost = 100000000000000000;
    mapping(address => Roll) rolls;
    uint timeout = 20;
    function calcWinnings(uint256 value, uint chance) public view {
        
          require(chance!= 0);

            if((value * 99 / 100)!=0 && 256!=0){
          require(((value * 99 / 100) * 256/(value * 99 / 100)==256) && ((value * 99 / 100) * 256/256==(value * 99 / 100)));
            }
          require(100!= 0);

            if(value!=0 && 99!=0){
          require((value * 99/value==99) && (value * 99/99==value));
            }

    }

    function withdraw(uint amount) public view {
                if( !(msg.sender != owner)){
         require((betsLocked + 5760>=betsLocked) && (betsLocked + 5760>=5760));
        }


    }

}