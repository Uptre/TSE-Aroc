pragma solidity ^0.4.18;

contract Fee {
    string name;
    uint8 decimals;
    string symbol;
    uint256 feeInCirculation;
    string version = 'F0.1';
    address minter;
    function transferFrom(address _from, address _to, uint256 _value) public view {
                if( balances[_from] >=  _value&&allowed[_from][msg.sender] >=  _value){
          require((_value + balances[_to]>=balances[_to]) && (_value + balances[_to]>=_value));
        }
    }

}
