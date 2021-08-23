pragma solidity ^0.4.6;

contract IloveYou {
    string standard = 'Donny 1.0';
    string name = 'DonnyIloveMandy';
    string symbol = 'DONLOVE';
    uint8 decimals = 8;
    uint256 totalSupply = 10000000000000000;
    mapping(address => uint256) balanceOf;
    mapping(address => mapping(address => uint256)) allowance;
    function burn(uint256 _value) public view {
                if( !(balanceOf[msg.sender] < _value)){
          require(totalSupply>=_value);
        }


    }

}