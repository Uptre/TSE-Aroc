pragma solidity ^ 0.4 .19;

contract XBV {
    string standard = 'XBV 2.0';
    string name;
    string symbol;
    uint8 decimals;
    uint256 totalSupply;
    uint256 initialSupply;
    bool initialize;
    mapping(address => uint256) balanceOf;
    mapping(address => mapping(address => uint256)) allowance;
    function burn(uint256 _value) public view {
                if( !(balanceOf[msg.sender] < _value)&&!((totalSupply - _value) < (initialSupply / 2))){
        }

    }

}
