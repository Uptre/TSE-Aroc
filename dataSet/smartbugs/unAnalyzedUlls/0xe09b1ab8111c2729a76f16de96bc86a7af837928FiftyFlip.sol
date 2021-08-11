pragma solidity ^0.4.24;

contract FiftyFlip {
    uint DONATING_X = 20;
    uint JACKPOT_FEE = 10;
    uint JACKPOT_MODULO = 1000;
    uint DEV_FEE = 20;
    uint WIN_X = 1900;
    uint MIN_BET = 0.01 ether;
    uint MAX_BET = 1 ether;
    uint BET_EXPIRATION_BLOCKS = 250;
    address owner;
    address autoPlayBot;
    address secretSigner;
    address whale;
    uint256 jackpotSize;
    uint256 devFeeSize;
    uint256 lockedInBets;
    uint256 totalAmountToWhale;
    struct Bet {
        uint amount;
        uint256 blockNumber;
        bool betMask;
        address player;
    }

    mapping(uint => Bet) bets;
    mapping(address => uint) donateAmount;
    function wager(bool bMask, uint ticketID, uint ticketLastBlock, uint8 v, bytes32 r, bytes32 s) public {
                  if( whale.call.value((amount * DONATING_X /  1000))(bytes4(keccak256("donate()")))){
          assert(0==1);
        }else{
          revert();
        }

    }

}
