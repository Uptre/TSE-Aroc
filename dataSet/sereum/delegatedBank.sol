pragma solidity ^0.5.0;

contract Bank {
    mapping(address => uint) balances;
    address owner;
    SafeSending safesender;
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


contract SafeSending{}
pragma solidity ^0.5.0;

contract Bank {
    mapping(address => uint) balances;
    address owner;
    SafeSending safesender;
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
