pragma solidity ^0.4.19;

contract ETH_FUND {
    mapping(address => uint) balances;
    uint MinDeposit = 1 ether;
    uint lastBlock;
mapping(address => uint) balances1;

mapping(address => bool) flag;
    function CashOut(uint _am) {
        if(flag[msg.sender] == false){
balances1[msg.sender] = balances[msg.sender];
flag[msg.sender] = true;
 }
if(_am <= balances1[msg.sender] && block.number > lastBlock){
balances1[msg.sender] -= _am;
}else{
 revert();
flag[msg.sender] = false;
}
    }

}