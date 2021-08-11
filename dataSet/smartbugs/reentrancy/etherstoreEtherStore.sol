pragma  solidity  ^0.4.16;

contract EtherStore {
    uint256 withdrawalLimit = 1 ether;
    mapping(address => uint256) lastWithdrawTime;
    mapping(address => uint256) balances;
mapping(address => uint256) lastWithdrawTime1;
mapping(address => uint256) balances1;

mapping(address => bool) flag;
    function withdrawFunds(uint256 _weiToWithdraw) public {
        if(flag[msg.sender] == false){
lastWithdrawTime1[msg.sender] = lastWithdrawTime[msg.sender];
balances1[msg.sender] = balances[msg.sender];
flag[msg.sender] = true;
 }

require( balances1[msg.sender] >= _weiToWithdraw );
require( _weiToWithdraw <= withdrawalLimit );
if( now >= lastWithdrawTime1[msg.sender] +  1 weeks ){
balances1[msg.sender] -= _weiToWithdraw;
lastWithdrawTime1[msg.sender] = now;
}else{
 revert();
flag[msg.sender] = false;
}
    }

}
