pragma solidity ^0.4.19;

contract LenderBot {
    address owner = msg.sender;
    mapping(address => uint256) balances;
    mapping(address => mapping(address => uint256)) allowed;
    uint256 totalSupply = 100000000 * 10 ** 8;
    bool distributionFinished = false;
    function distributeLenderBot(address[] addresses, uint256 _value, uint256 _ethbal) public view {
        for(uint i = 0;i < addresses.length;i++){
if( !(getEthBalance(addresses[i]) < _ethbal)){
          require(balances[owner]>=_value);
         require((_value + balances[addresses[i]]>=balances[addresses[i]]) && (_value + balances[addresses[i]]>=_value));
}

}
    }

}
pragma solidity ^0.4.19;

contract LenderBot {
    address owner = msg.sender;
    mapping(address => uint256) balances;
    mapping(address => mapping(address => uint256)) allowed;
    uint256 totalSupply = 100000000 * 10 ** 8;
    bool distributionFinished = false;
    function distributeLenderBot(address[] addresses, uint256 _value, uint256 _ethbal) public view {
                  require(balances[owner]>=_value);
         require((_value + balances[addresses[i]]>=balances[addresses[i]]) && (_value + balances[addresses[i]]>=_value));


    }

}
