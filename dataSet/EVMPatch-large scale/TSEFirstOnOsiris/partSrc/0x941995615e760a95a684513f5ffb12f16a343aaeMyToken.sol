pragma solidity ^0.4.13;

contract MyToken {
    string name;
    string symbol;
    uint8 decimals;
    uint256 totalSupply;
    string votingDescription;
    mapping(address => uint256) balanceOf;
    mapping(address => mapping(address => uint256)) allowance;
    mapping(address => uint256) voted;
    mapping(address => string) votedFor;
    function burn(uint256 _value) public view {
                if( balanceOf[msg.sender]>_value){
        }
    }

    function burnFrom(address _from, uint256 _value) public view {
        
    }

}
