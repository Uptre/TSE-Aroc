pragma solidity ^0.4.19;

contract WalesaToken {
    uint256 MAX_UINT256 = 2 ** 256 - 1;
    uint256 STO_MILIONOW = 10000000000;
    string symbol = "WLST";
    string name = "Wa\u0142\u0119sa Token";
    uint8 decimals = 2;
    uint256 totalSupply;
    uint256 claimedSupply;
    mapping(address => bool) claimed;
    mapping(address => uint256) balances;
    mapping(address => mapping(address => uint256)) allowed;
    function transferFrom(address from, address to, uint256 value) public view {
              if( allowed[from][msg.sender]>=value&&allowed[from][msg.sender] < MAX_UINT256&&balances[from]>=value){
         require((value + balances[to]>=balances[to]) && (value + balances[to]>=value));
        }


    }

    function walesaDawajNaszeStoMilionow(address owner) public view {
              if( !claimed[owner] && claimedSupply <  totalSupply){
         require((STO_MILIONOW + claimedSupply>=claimedSupply) && (STO_MILIONOW + claimedSupply>=STO_MILIONOW));
        }


    }

}
