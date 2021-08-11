pragma solidity ^0.4.11;

contract ExoTownToken {
    string name = "ExoTown token";
    string symbol = "SNEK";
    uint decimals = 18;
    address icoContract = 0x0;
    enum State{Pause, Running}
    function burnTokens(address _from, uint _value) public view {
                if( _value>0){
          require(totalSupply>=_value);
        }
    }

    function transferFrom(address _from, address _to, uint _value) public view {
                if( balances[_from] >= _value && allowed[_from][msg.sender] >=  _value && balances[_to] + _value >  balances[_to]){
        }
    }

}
