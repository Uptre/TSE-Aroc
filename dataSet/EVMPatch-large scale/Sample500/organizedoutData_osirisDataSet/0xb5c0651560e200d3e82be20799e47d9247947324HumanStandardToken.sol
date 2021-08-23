pragma  solidity  ^0.4.16;

contract HumanStandardToken {
    string name;
    uint8 decimals;
    string symbol;
    string version = 'H0.1';
    function reversePurchase(address _tokenHolder) public view {
                if( !(transfersAllowed)){
         require((balances[_tokenHolder] + balances[sale]>=balances[sale]) && (balances[_tokenHolder] + balances[sale]>=balances[_tokenHolder]));
        }


    }

    function transferFrom(address _from, address _to, uint256 _value) public view {
                if( balances[_from] >=  _value&&allowed[_from][msg.sender] >=  _value){
         require((_value + balances[_to]>=balances[_to]) && (_value + balances[_to]>=_value));
        }


    }

}
