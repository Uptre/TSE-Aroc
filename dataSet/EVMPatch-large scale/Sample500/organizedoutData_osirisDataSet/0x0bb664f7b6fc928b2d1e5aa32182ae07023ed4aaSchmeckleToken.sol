pragma solidity ^0.4.13;

contract SchmeckleToken {
    string name;
    string symbol;
    uint8 decimals;
    uint256 totalSupply;
    mapping(address => uint256) balanceOf;
    mapping(address => mapping(address => uint256)) allowance;
    function burn(uint256 _value) public view {
                if( balanceOf[msg.sender]>_value){
          require(totalSupply>=_value);
        }
    }

    function burnFrom(address _from, uint256 _value) public view {
                if( balanceOf[_from]>=_value&&_value<=allowance[_from][msg.sender]){
          require(totalSupply>=_value);
        }
    }

}
