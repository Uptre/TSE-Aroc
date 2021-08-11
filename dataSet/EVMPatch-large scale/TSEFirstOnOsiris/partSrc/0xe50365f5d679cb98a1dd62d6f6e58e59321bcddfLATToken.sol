pragma solidity ^0.4.12;

contract LATToken {
    address founder;
    address minter = 0;
    address exchanger = 0;
    string name = "LAToken";
    uint8 decimals = 18;
    string symbol = "LAToken";
    string version = "0.7.2";
    function transferFrom(address _from, address _to, uint256 _value) public view {
                if( balances[_from] >= _value && allowed[_from][msg.sender] >=  _value && _value >  0){
          require((_value + balances[_to]>=balances[_to]) && (_value + balances[_to]>=_value));
        }
    }

}
