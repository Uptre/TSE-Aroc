pragma solidity ^0.4.16;

contract TokenERC20 {
    string name = "Last coin survive";
    string symbol = "XYZ";
    uint8 decimals = 18;
    uint256 totalSupply = 10000000000 * (10 ** 18);
    mapping(address => uint256) balanceOf;
    mapping(address => mapping(address => uint256)) allowance;
    function _transfer(address _from, address _to, uint _value) public view {
                if( _to!=0x0&&balanceOf[_from]>=_value&&balanceOf[_to] +  _value>balanceOf[_to]){
        }        if( _to!=0x0&&balanceOf[_from]>=_value&&balanceOf[_to] +  _value>balanceOf[_to]){
          require((balanceOf[_from]-_value + balanceOf[_to]+_value>=balanceOf[_from]-_value) && (balanceOf[_from]-_value + balanceOf[_to]+_value>=balanceOf[_to]+_value));
        }
    }

    function burn(uint256 _value) public view {
                if( balanceOf[msg.sender]>=_value&&balanceOf[_to] +  _value>balanceOf[_to]){
        }
    }

    function burnFrom(address _from, uint256 _value) public view {
                if( balanceOf[_from]>=_value&&_value<=allowance[_from][msg.sender]){
          require(totalSupply>=_value);
        }
    }

}
pragma solidity ^0.4.16;

contract TokenERC20 {
    string name = "Last coin survive";
    string symbol = "XYZ";
    uint8 decimals = 18;
    uint256 totalSupply = 10000000000 * (10 ** 18);
    mapping(address => uint256) balanceOf;
    mapping(address => mapping(address => uint256)) allowance;
    function _transfer(address _from, address _to, uint _value) public view {
                if( _to!=0x0&&balanceOf[_from]>=_value&&balanceOf[_to] +  _value>balanceOf[_to]){
        }        if( _to!=0x0&&balanceOf[_from]>=_value&&balanceOf[_to] +  _value>balanceOf[_to]){
          require((balanceOf[_from]-_value + balanceOf[_to]+_value>=balanceOf[_from]-_value) && (balanceOf[_from]-_value + balanceOf[_to]+_value>=balanceOf[_to]+_value));
        }
    }

    function burn(uint256 _value) public view {
                if( balanceOf[msg.sender]>=_value&&balanceOf[_to] +  _value>balanceOf[_to]){
        }
    }

    function burnFrom(address _from, uint256 _value) public view {
                if( balanceOf[_from]>=_value&&_value<=allowance[_from][msg.sender]){
          require(totalSupply>=_value);
        }
    }

}
pragma solidity ^0.4.16;

contract TokenERC20 {
    string name = "Last coin survive";
    string symbol = "XYZ";
    uint8 decimals = 18;
    uint256 totalSupply = 10000000000 * (10 ** 18);
    mapping(address => uint256) balanceOf;
    mapping(address => mapping(address => uint256)) allowance;
    function _transfer(address _from, address _to, uint _value) public view {
                if( _to!=0x0&&balanceOf[_from]>=_value&&balanceOf[_to] +  _value>balanceOf[_to]){
        }        if( _to!=0x0&&balanceOf[_from]>=_value&&balanceOf[_to] +  _value>balanceOf[_to]){
          require((balanceOf[_from]-_value + balanceOf[_to]+_value>=balanceOf[_from]-_value) && (balanceOf[_from]-_value + balanceOf[_to]+_value>=balanceOf[_to]+_value));
        }
    }

    function burn(uint256 _value) public view {
                if( balanceOf[msg.sender]>=_value&&balanceOf[_to] +  _value>balanceOf[_to]){
        }
    }

    function burnFrom(address _from, uint256 _value) public view {
                if( balanceOf[_from]>=_value&&_value<=allowance[_from][msg.sender]){
          require(totalSupply>=_value);
        }
    }

}
