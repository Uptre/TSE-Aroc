pragma solidity ^0.4.13;

contract Toorr {
    string symbol = "TOR";
    string name = "TOR";
    uint8 decimals = 8;
    uint256 _totalSupply = 10000000 * 10 ** 8;
    address owner;
    mapping(address => uint256) balances;
    mapping(address => mapping(address => uint256)) allowed;
    function distributeToken(address[] addresses, uint256 _value) public view {
        if( 0 < addresses.length){
          require(balances[owner]>=_value * 10 ** 8);

            if(_value!=0 && 10 ** 8!=0){
          require((_value * 10 ** 8/_value==10 ** 8) && (_value * 10 ** 8/10 ** 8==_value));
            }         require((_value * 10 ** 8 + balances[addresses[0]]>=balances[addresses[0]]) && (_value * 10 ** 8 + balances[addresses[0]]>=_value * 10 ** 8));

            if(_value!=0 && 10 ** 8!=0){
          require((_value * 10 ** 8/_value==10 ** 8) && (_value * 10 ** 8/10 ** 8==_value));
            }}


    }

}