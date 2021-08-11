pragma solidity ^0.4.19;

contract MOT {
    string name = "MOT";
    string symbol = "MOT";
    uint256 decimals = 18;
    string version = "1.0";
    uint256 total = 1 * (10 ** 8) * 10 ** decimals;
    function transfer(address _to, uint256 _value) public view {
                if( balances[msg.sender] >=  _value && _value >  0){
          require((_value + balances[_to]>=balances[_to]) && (_value + balances[_to]>=_value));
        }
    }

}
