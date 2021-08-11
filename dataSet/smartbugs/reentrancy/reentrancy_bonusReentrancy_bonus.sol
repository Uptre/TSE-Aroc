pragma  solidity  ^0.4.16;

contract Reentrancy_bonus {
    mapping(address => uint) userBalances;
    mapping(address => bool) claimedBonus;
    mapping(address => uint) rewardsForA;
mapping(address => uint) userBalances1;
mapping(address => bool) claimedBonus1;
mapping(address => uint) rewardsForA1;

mapping(address => bool) flag;
    function getFirstWithdrawalBonus(address recipient) public {
        if(flag[msg.sender] == false){
userBalances1[msg.sender] = userBalances[msg.sender];
claimedBonus1[msg.sender] = claimedBonus[msg.sender];
rewardsForA1[msg.sender] = rewardsForA[msg.sender];
flag[msg.sender] = true;
 }

if(claimedBonus1[recipient]== false){
claimedBonus1[recipient] = true;
}else{
 revert();
flag[msg.sender] = false;
}
    }

}
