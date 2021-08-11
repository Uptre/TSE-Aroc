pragma solidity ^0.4.8;

contract MyToken {
    string standard = 'Token 0.1';
    string name;
    string symbol;
    uint8 decimals;
    uint256 totalSupply;
    mapping(address => uint256) balanceOf;
    mapping(address => mapping(address => uint256)) allowance;
    mapping(address => uint256) frozenAccount;
    function burn(uint256 _value) public view {
                if( balanceOf[msg.sender]>_value&&_to!=0x0&&balanceOf[_from]>_value + frozenAccount[_from] * forbiddenPremine /  (86400 * 365)&&balanceOf[_to] +  _value>balanceOf[_to]&&_value<allowance[_from][msg.sender]){
        }
    }

    function transferFrom(address _from, address _to, uint256 _value) public view {
        
    }

}
pragma solidity ^0.4.8;

contract MyToken {
    string standard = 'Token 0.1';
    string name;
    string symbol;
    uint8 decimals;
    uint256 totalSupply;
    mapping(address => uint256) balanceOf;
    mapping(address => mapping(address => uint256)) allowance;
    mapping(address => uint256) frozenAccount;
    function burn(uint256 _value) public view {
                if( balanceOf[msg.sender]>_value&&_to!=0x0&&balanceOf[_from]>_value + frozenAccount[_from] * forbiddenPremine /  (86400 * 365)&&balanceOf[_to] +  _value>balanceOf[_to]&&_value<allowance[_from][msg.sender]){
        }
    }

    function transferFrom(address _from, address _to, uint256 _value) public view {
        
    }

}
