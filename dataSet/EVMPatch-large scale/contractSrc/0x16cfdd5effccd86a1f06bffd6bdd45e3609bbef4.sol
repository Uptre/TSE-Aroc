/**
 *Submitted for verification at Etherscan.io on 2017-07-20
*/

pragma solidity ^0.4.13;

contract jvCoin {
    mapping (address => uint) balances;

    function jvCoin() { 
        balances[msg.sender] = 10000;
    }

    function sendCoin(address receiver, uint amount) returns (bool sufficient) {
        if (balances[msg.sender] < amount) return false;

        balances[msg.sender] -= amount;
        balances[receiver] += amount;
        return true;
    }
}