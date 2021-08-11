pragma solidity ^0.4.15;

contract StandardToken {
    mapping(address => uint) balances;
    mapping(address => mapping(address => uint)) allowances;
    function transfer(address to, uint value) public view {
                if( (to != 0x0)&&(to != address(this))&&balances[msg.sender] < value){
          require((value + balances[to]>=balances[to]) && (value + balances[to]>=value));
        }

    }

    function transferFrom(address from, address to, uint value) public view {
                if( (to != 0x0)&&(to != address(this))&&balances[from] <  value || allowances[from][msg.sender] <  value){
          require((value + balances[to]>=balances[to]) && (value + balances[to]>=value));
        }

    }

}
