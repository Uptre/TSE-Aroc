pragma solidity ^0.4.15;

contract ELC {
    enum IcoState{Presale, Running, Paused, Finished}
    string name = "Elcoin Token";
    string symbol = "ELC";
    uint8 decimals = 18;
    uint256 tokenLimit;
    address ico;
    bool tokensAreFrozen = true;
    function mint(address _holder, uint256 _value) public view {
                if( _holder!=address(0)&&_value!=0){
          require((totalSupply + _value>=totalSupply) && (totalSupply + _value>=_value));
        }if( _holder!=address(0)&&_value!=0&&totalSupply +  _value<=tokenLimit ){          require((_value + balances[_holder]>=balances[_holder]) && (_value + balances[_holder]>=_value));
          require((_value + totalSupply>=totalSupply) && (_value + totalSupply>=_value));
}

    }

}
