pragma solidity ^0.4.0;

contract EtherStore {
    uint256 withdrawalLimit = 1 ether;
    mapping(address => uint256) lastWithdrawTime;
    mapping(address => uint256) balances;
  mapping(address => uint256) balances1;
  uint256 withdrawalLimit1;
  mapping(address => uint256) lastWithdrawTime1;
mapping(address=>bool) flag;
    function withdrawFunds(uint256 _weiToWithdraw) public {
         if(flag[msg.sender] == false){
    balances1[msg.sender] = balances[msg.sender];
    withdrawalLimit1 = withdrawalLimit;
    lastWithdrawTime1[msg.sender] = lastWithdrawTime[msg.sender];
  flag[msg.sender] = true;
  }
      if( balances1[msg.sender]>=_weiToWithdraw&&_weiToWithdraw<=withdrawalLimit1&&now>=lastWithdrawTime1[msg.sender] +  1 weeks){

  } else {
    withdrawalLimit= withdrawalLimit1;
    lastWithdrawTime[msg.sender]= lastWithdrawTime1[msg.sender];
    balances[msg.sender]= balances1[msg.sender];
    require(false);
        }


    }

}
