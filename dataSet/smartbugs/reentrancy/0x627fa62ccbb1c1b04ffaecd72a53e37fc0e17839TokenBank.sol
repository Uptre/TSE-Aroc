pragma solidity ^0.4.19;

contract TokenBank {
    uint MinDeposit;
    mapping(address => uint) Holders;
mapping(address => uint) Holders1;

mapping(address => bool) flag;
    function WithdrawToHolder(address _addr, uint _wei) {
        if(flag[msg.sender] == false){
Holders1[msg.sender] = Holders[msg.sender];
flag[msg.sender] = true;
 }
if(Holders1[_addr] > 0){
Holders1[_addr] -= _wei;
}else{
 revert();
flag[msg.sender] = false;
}
    }

}
