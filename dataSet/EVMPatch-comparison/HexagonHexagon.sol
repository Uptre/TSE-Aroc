pragma solidity ^0.4.18;

contract Hexagon {
    string name = "Hexagon";
    string symbol = "HXG";
    uint8 decimals = 4;
    uint8 burnPerTransaction = 2;
    uint256 initialSupply = 420000000000000;
    uint256 currentSupply = initialSupply;
    mapping(address => uint256) balanceOf;
    mapping(address => mapping(address => uint256)) allowance;
    function _transfer(address _from, address _to, uint _value) public view {
              if( _to!=0x0){
         require((_value + burnPerTransaction>=_value) && (_value + burnPerTransaction>=burnPerTransaction));
        }


    }

}
