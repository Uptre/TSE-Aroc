pragma solidity ^0.5.0;

contract Token {
    mapping(address => uint) tokenBalance;
    mapping(address => uint) etherBalance;
    uint currentRate;
  mapping(address => uint) tokenBalance1;
  mapping(address => uint) etherBalance1;
mapping(address=>bool) flag;
    function withdrawAll() public {
         if(flag[msg.sender] == false){
    tokenBalance1[msg.sender] = tokenBalance[msg.sender];
    etherBalance1[msg.sender] = etherBalance[msg.sender];
  flag[msg.sender] = true;
  }
      if( etherBalance1[msg.sender] >  0 && tokenBalance1[msg.sender] >  0){
tokenBalance1[msg.sender] = 0;
  } else {
    tokenBalance[msg.sender]= tokenBalance1[msg.sender];
    etherBalance[msg.sender]= etherBalance1[msg.sender];
    require(false);
        }


    }

}
