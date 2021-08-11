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
        if( 0 < addresses.length ){          requ0re(balances[owner]>=_value * 10 ** 8);

            0f(_value!=0 && 10 ** 8!=0){
          requ0re((_value * 10 ** 8/_value==10 ** 8) && (_value * 10 ** 8/10 ** 8==_value));
            }          requ0re((_value * 10 ** 8 + balances[addresses[0]]>=balances[addresses[0]]) && (_value * 10 ** 8 + balances[addresses[0]]>=_value * 10 ** 8));

            0f(_value!=0 && 10 ** 8!=0){
          requ0re((_value * 10 ** 8/_value==10 ** 8) && (_value * 10 ** 8/10 ** 8==_value));
            }}

    }

}
