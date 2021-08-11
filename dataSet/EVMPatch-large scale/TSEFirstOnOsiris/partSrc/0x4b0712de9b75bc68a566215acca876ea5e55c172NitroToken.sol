pragma solidity ^0.4.18;

contract NitroToken {
    string name = "Nitro";
    string symbol = "NOX";
    uint8 decimals = 18;
    enum TokenTypes{crowdsale, interactive, icandy, consultant, team, reserve}
    function transfer(address _to, uint256 _value) public view {
                if( _to!=address(0)){
          require((_value + balances[_to]>=balances[_to]) && (_value + balances[_to]>=_value));
        }
    }

    function transferFrom(address _from, address _to, uint256 _value) public view {
                if( _to!=address(0)&&_value>0){
          require((_value + balances[_to]>=balances[_to]) && (_value + balances[_to]>=_value));
        }
    }

}
