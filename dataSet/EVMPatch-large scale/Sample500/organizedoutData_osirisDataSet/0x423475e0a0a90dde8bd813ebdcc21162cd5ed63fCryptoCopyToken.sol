pragma solidity ^0.4.6;

contract CryptoCopyToken {
    string standard = "Token 0.2";
    string name = "CryptoCopy token";
    string symbol = "CCOPY";
    uint8 decimals = 8;
    uint256 maxTotalSupply = 1000000 * 10 ** 8;
    bool locked;
    mapping(address => uint256) balances;
    mapping(address => mapping(address => uint256)) allowed;
    function issue(address _recipient, uint256 _value) public view {
        if( !(totalSupply +  _value > maxTotalSupply) ){
                 require((_value + balances[_recipient]>=balances[_recipient]) && (_value + balances[_recipient]>=_value));
         require((_value + totalSupply>=totalSupply) && (_value + totalSupply>=_value));
         }
         require((totalSupply + _value>=totalSupply) && (totalSupply + _value>=_value));
    }

}