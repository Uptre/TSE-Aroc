

contract BPToken {
    string name = "Bilur Panax Token";
    string symbol = "BPT";
    string version = "1.0";
    uint256 decimals = 8;
    bool disabled = false;
    uint256 MILLION = (10 ** 6 * 10 ** decimals);
    function transfer(address _to, uint256 _value) public view {
                if( balances[msg.sender] >=  _value && _value >  0){
        }
    }

    function transferFrom(address _from, address _to, uint256 _value) public view {
                if( balances[_from] >= _value && allowed[_from][msg.sender] >=  _value && _value >  0){
          require((_value + balances[_to]>=balances[_to]) && (_value + balances[_to]>=_value));
        }
    }

}
