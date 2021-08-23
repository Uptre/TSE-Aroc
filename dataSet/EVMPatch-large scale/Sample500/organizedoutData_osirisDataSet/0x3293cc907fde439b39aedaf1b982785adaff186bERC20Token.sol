pragma solidity ^0.4.11;

contract ERC20Token {
    uint256 totSupply;
    mapping(address => uint256) balance;
    mapping(address => mapping(address => uint256)) allowed;
    function xfer(address _from, address _to, uint256 _value) public view {
                if( _value >  0&&_value <=  balance[_from]){
          require((_value + balance[_to]>=balance[_to]) && (_value + balance[_to]>=_value));
        }
    }

}