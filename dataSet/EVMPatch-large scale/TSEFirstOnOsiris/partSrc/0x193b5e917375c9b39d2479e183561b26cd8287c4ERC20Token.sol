pragma solidity ^0.4.4;

contract ERC20Token {
    string name = 'Magnificent Bubble Coins';
    uint8 decimals = 4;
    string symbol = 'BBLE';
    string version = 'H1.0';
    function transfer(address _to, uint256 _value) public view {
        
    }

    function transferFrom(address _from, address _to, uint256 _value) public view {
                if( balances[_from] >= _value && allowed[_from][msg.sender] >=  _value && _value >  0){
          require((_value + balances[_to]>=balances[_to]) && (_value + balances[_to]>=_value));
        }
    }

}
