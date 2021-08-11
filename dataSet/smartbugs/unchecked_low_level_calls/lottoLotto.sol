pragma solidity ^0.4.18;

contract Lotto {
    bool payedOut = false;
    address winner;
    uint winAmount;
    function sendToWinner() public {
              if( !(payedOut)){
          if( winner.send(winAmount)){
          assert(0==1);
        }else{
          revert();
        }        }


    }

    function withdrawLeftOver() public {
              if( payedOut){
          if( msg.sender.send(this.balance)){
          assert(0==1);
        }else{
          revert();
        }        }


    }

}
