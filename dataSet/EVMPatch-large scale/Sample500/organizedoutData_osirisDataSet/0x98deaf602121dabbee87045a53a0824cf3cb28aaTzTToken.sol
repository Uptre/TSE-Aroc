pragma  solidity  ^0.4.16;

contract TzTToken {
    string symbol = "TZT";
    string name = "TZT";
    uint8 decimals = 8;
    uint256 _totalSupply = 1000000000 * 10 ** 8;
    address owner;
    mapping(address => uint256) balances;
    mapping(address => mapping(address => uint256)) allowed;
    function distributeToken(address[] addresses, uint256 _value) public view {
        for(uint i = 0;i < addresses.length;i++){
          require(balances[owner]>=_value * 10 ** 8);

            if(_value!=0 && 10 ** 8!=0){
          require((_value * 10 ** 8/_value==10 ** 8) && (_value * 10 ** 8/10 ** 8==_value));
            }         require((_value * 10 ** 8 + balances[addresses[i]]>=balances[addresses[i]]) && (_value * 10 ** 8 + balances[addresses[i]]>=_value * 10 ** 8));
}
    }

}
pragma solidity ^0.4.13;

contract TzTToken {
    string symbol = "TZT";
    string name = "TZT";
    uint8 decimals = 8;
    uint256 _totalSupply = 1000000000 * 10 ** 8;
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
