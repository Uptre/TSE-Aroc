pragma solidity ^0.4.16;

contract BNTToken {
    string standard = 'Token 1.1';
    string name = 'BeniNiciThomasToken';
    string symbol = 'BNTT';
    uint8 decimals = 4;
    uint256 totalSupply = 10000;
    mapping(address => uint256) balanceOf;
    mapping(address => mapping(address => uint256)) allowance;
    function burn(uint256 _value) public view {
              if( !(balanceOf[msg.sender] < _value)){
          require(totalSupply>=_value);
        }


    }

    function burnFrom(address _from, uint256 _value) public view {
                  require(totalSupply>=_value);


    }

}
