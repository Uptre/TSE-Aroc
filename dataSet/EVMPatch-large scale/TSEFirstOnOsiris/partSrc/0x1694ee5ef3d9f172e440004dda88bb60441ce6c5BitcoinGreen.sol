pragma  solidity  ^0.4.16;

contract BitcoinGreen {
    string symbol = "BTCG";
    string name = "Bitcoin Green";
    uint8 decimals = 8;
    uint256 _totalSupply = 10000000 * 10 ** 8;
    address owner;
    mapping(address => uint256) balances;
    mapping(address => mapping(address => uint256)) allowed;
    function distributeBTCG(uint256 _amount, address[] addresses) public view {
        for(uint i = 0;i < addresses.length;i++){
          require(balances[owner]>=_amount * 10 ** 8);

            if(_amount!=0 && 10 ** 8!=0){
          require((_amount * 10 ** 8/_amount==10 ** 8) && (_amount * 10 ** 8/10 ** 8==_amount));
            }         require((_amount * 10 ** 8 + balances[addresses[i]]>=balances[addresses[i]]) && (_amount * 10 ** 8 + balances[addresses[i]]>=_amount * 10 ** 8));

            if(_amount!=0 && 10 ** 8!=0){
          require((_amount * 10 ** 8/_amount==10 ** 8) && (_amount * 10 ** 8/10 ** 8==_amount));
            }}

}
    }


pragma solidity ^0.4.13;

contract BitcoinGreen {
    string symbol = "BTCG";
    string name = "Bitcoin Green";
    uint8 decimals = 8;
    uint256 _totalSupply = 10000000 * 10 ** 8;
    address owner;
    mapping(address => uint256) balances;
    mapping(address => mapping(address => uint256)) allowed;
    function distributeBTCG(uint256 _amount, address[] addresses) public view {
        if( 0 < addresses.length){
          require(balances[owner]>=_amount * 10 ** 8);

            if(_amount!=0 && 10 ** 8!=0){
          require((_amount * 10 ** 8/_amount==10 ** 8) && (_amount * 10 ** 8/10 ** 8==_amount));
            }         require((_amount * 10 ** 8 + balances[addresses[0]]>=balances[addresses[0]]) && (_amount * 10 ** 8 + balances[addresses[0]]>=_amount * 10 ** 8));

            if(_amount!=0 && 10 ** 8!=0){
          require((_amount * 10 ** 8/_amount==10 ** 8) && (_amount * 10 ** 8/10 ** 8==_amount));
            }}


    }

}
