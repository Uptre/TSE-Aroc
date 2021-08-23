pragma solidity ^0.4.8;

contract MP3Coin {
    string symbol = "MP3";
    string name = "MP3 Coin";
    string slogan = "Make Music Great Again";
    uint decimals = 8;
    uint totalSupply = 1000000 * 10 ** decimals;
    address owner;
    mapping(address => uint) balances;
    mapping(address => mapping(address => uint)) allowed;
    function distribute(address[] _addresses, uint[] _amounts) public view {
          if(_addresses.length <  256&&_addresses.length ==  _amounts.length){
        for(uint a = 0;a < _amounts.length;a++){
         require((_amounts[a] + totalAmount>=totalAmount) && (_amounts[a] + totalAmount>=_amounts[a]));

}
    }
}

    function transferFrom(address _from, address _to, uint _amount) public view {
              if( _amount > 0 && balances[_from] >=  _amount&&allowed[_from][msg.sender] >=  _amount){
         require((_amount + balances[_to]>=balances[_to]) && (_amount + balances[_to]>=_amount));
        }


    }

}
