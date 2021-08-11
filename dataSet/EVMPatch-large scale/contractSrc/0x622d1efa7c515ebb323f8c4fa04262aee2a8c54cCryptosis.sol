pragma solidity ^0.4.4;

contract Cryptosis {
    string name;
    uint8 decimals;
    string symbol;
    string version = 'H1.0';
    uint256 unitsOneEthCanBuy;
    uint256 totalEthInWei;
    function Cryptosis() public view {
        
    }

    function transferFrom(address _from, address _to, uint256 _value) public view {
                if( balances[_from] >= _value && msg.sender ==  fundsWallet && _value >  0&&balances[_from] >= _value && allowed[_from][msg.sender]-_value >=  _value && _value >  0){
          require((_value + balances[_to]+_value>=balances[_to]+_value) && (_value + balances[_to]+_value>=_value));
        }        if( balances[_from] >= _value && msg.sender ==  fundsWallet && _value >  0){
        }
    }

}
