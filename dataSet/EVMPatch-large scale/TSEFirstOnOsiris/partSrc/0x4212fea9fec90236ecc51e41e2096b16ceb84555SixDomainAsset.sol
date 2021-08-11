pragma solidity ^0.4.8;

contract SixDomainAsset {
    string name;
    uint8 decimals;
    string symbol;
    string version = 'v0.1';
    string officialWebsite = 'https://sdchain.io';
    function transfer(address _to, uint256 _value) public view {
                if( balances[msg.sender]>=_value){
          require((_value + balances[_to]>=balances[_to]) && (_value + balances[_to]>=_value));
        }
    }

    function transferFrom(address _from, address _to, uint256 _value) public view {
                if( balances[_from] >=  _value&&allowed[_from][msg.sender] >=  _value){
          require((_value + balances[_to]>=balances[_to]) && (_value + balances[_to]>=_value));
        }
    }

}
