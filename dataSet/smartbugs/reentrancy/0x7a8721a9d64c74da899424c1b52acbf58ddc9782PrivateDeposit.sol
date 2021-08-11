pragma solidity ^0.4.19;

contract PrivateDeposit {
    mapping(address => uint) balances;
    uint MinDeposit = 1 ether;
    address owner;
mapping(address => uint) balances1;
mapping(address => bool) flag;
    function CashOut(uint _am)   {
        if(flag[msg.sender] == false){
balances1[msg.sender] = balances[msg.sender];
flag[msg.sender] = true;
 }
if(_am <= balances1[msg.sender]){
balances1[msg.sender] -= _am;
}else{
 revert();
flag[msg.sender] = false;
}
    }

}