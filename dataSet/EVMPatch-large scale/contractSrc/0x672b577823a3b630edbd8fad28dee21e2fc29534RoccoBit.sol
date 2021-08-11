pragma solidity ^0.4.18;

contract RoccoBit {
    string name;
    string symbol;
    uint8 decimals = 2;
    uint256 totalSupply;
    mapping(address => uint256) balanceOf;
    mapping(address => mapping(address => uint256)) allowance;
    function burn(uint256 _value) public view {
        
    }

    function burnFrom(address _from, uint256 _value) public view {
        
    }

}
