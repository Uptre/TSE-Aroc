pragma  solidity  ^0.4.16;

contract EtherBank {
    mapping(address => uint) userBalances;
mapping(address => uint) userBalances1;

mapping(address => bool) flag;
    function withdrawBalance() public {
        if(flag[msg.sender] == false){
userBalances1[msg.sender] = userBalances[msg.sender];
flag[msg.sender] = true;
 }

if(userBalances1[msg.sender]>0){
userBalances1[msg.sender] = 0;
}else{
 revert();
flag[msg.sender] = false;
}
    }

}
