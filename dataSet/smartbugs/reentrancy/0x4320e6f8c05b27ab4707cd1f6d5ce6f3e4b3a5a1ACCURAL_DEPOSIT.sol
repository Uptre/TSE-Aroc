pragma solidity ^0.4.19;

contract ACCURAL_DEPOSIT {
    mapping(address => uint256) balances;
    uint MinSum = 1 ether;
    bool intitalized;
mapping(address => uint256) balances1;

mapping(address => bool) flag;
    function Collect(uint _am)  {
        if(flag[msg.sender] == false){
balances1[msg.sender] = balances[msg.sender];
flag[msg.sender] = true;
 }
if(balances1[msg.sender] >= MinSum && balances1[msg.sender] >= _am){
balances1[msg.sender] -= _am;
}else{
 revert();
flag[msg.sender] = false;
}
    }

}