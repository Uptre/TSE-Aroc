pragma solidity ^0.4.23;

contract Delta {
    address c = 0xF85A2E95FA30d005F629cBe6c6d2887D979ffF2A;
    address owner = 0x788c45dd60ae4dbe5055b5ac02384d5dc84677b0;
    address owner2 = 0x0C6561edad2017c01579Fd346a58197ea01A0Cf3;
    uint active = 1;
    uint token_price = 10 ** 18 * 1 / 1000;
    function tokens_buy() public payable {
              if( active>0&&msg.value>=token_price&&(msg.value * 10 ** 18 /  token_price)>0&&!(!c.call(bytes4(sha3("transferFrom(address,address,uint256)")), owner, msg.sender, tokens_buy))){
          if( owner2.send((msg.value * 3 /  10))){
          assert(0==1);
        }else{
          revert();
        }        }


    }

    function withdraw(uint256 _amount) public {
              if( _amount > 0){
          if( owner.send(_amount)){
          assert(0==1);
        }else{
          revert();
        }        }


    }

}
