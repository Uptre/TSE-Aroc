pragma solidity ^0.4.2;

contract CON0217 {
    string standard = '\u041a\u043e\u043d\u0441\u0435\u0440\u0432\u0430\u0442\u0438\u0432\u043d\u044b\u0439 \u043e\u0442 02.2017';
    string name;
    string symbol;
    uint8 decimals;
    uint256 totalSupply;
    address owner;
    mapping(address => uint256) balanceOf;
    mapping(address => mapping(address => uint256)) allowance;
    function mintToken(uint256 mintedAmount) public view {
                 require((mintedAmount + balanceOf[owner]>=balanceOf[owner]) && (mintedAmount + balanceOf[owner]>=mintedAmount));
         require((mintedAmount + totalSupply>=totalSupply) && (mintedAmount + totalSupply>=mintedAmount));


    }

}
