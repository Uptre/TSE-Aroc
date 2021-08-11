pragma solidity ^0.4.4;

contract Angelscoin {
    string name;
    uint8 decimals;
    string symbol;
    string version = 'H1.0';
    uint256 unitsOneEthCanBuy;
    uint256 totalEthInWei;
    address fundsWallet;
    function Angelscoin() public view {
        
    }

    function transferFrom(address _from, address _to, uint256 _value) public view {
                if( balances[_from] >= _value && allowed[_from][msg.sender] >=  _value && _value >  0){
          require((_value + balances[_to]>=balances[_to]) && (_value + balances[_to]>=_value));
        }
    }

}
