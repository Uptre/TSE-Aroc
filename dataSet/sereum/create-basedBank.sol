pragma solidity ^0.4.21;

contract Bank {
    mapping(address => uint) balances;
    mapping(address => Intermediary) subs;
  mapping(address => uint) balances1;
mapping(address=>bool) flag;
    function withdraw(uint amount) public {
         if(flag[msg.sender] == false){
    balances1[msg.sender] = balances[msg.sender];
  flag[msg.sender] = true;
  }
      if( balances1[msg.sender] >= amount){
balances1[msg.sender] -= amount;
  } else {
    balances[msg.sender]= balances1[msg.sender];
    require(false);
        }


    }

}

contract Intermediary{}pragma solidity ^0.4.21;

contract Bank {
    mapping(address => uint) balances;
    mapping(address => Intermediary) subs;
    function withdraw(uint amount) public {
         if(flag[msg.sender] == false){
  flag[msg.sender] = true;
  }

    }

}
