pragma solidity ^0.4.16;

contract TokenERC20 {
    string name;
    string symbol;
    uint8 decimals = 18;
    uint256 totalSupply;
    mapping(address => uint256) balanceOf;
    mapping(address => mapping(address => uint256)) allowance;
    function _transfer(address _from, address _to, uint _value) public view {
        if( _to!=0x0&&balanceOf[_from]>=_value&&balanceOf[_to] +  _value>balanceOf[_to] ){          require((balanceOf[_from] + balanceOf[_to]>=balanceOf[_from]) && (balanceOf[_from] + balanceOf[_to]>=balanceOf[_to]));
          require((balanceOf[_from]-_value + balanceOf[_to]+_value>=balanceOf[_from]-_value) && (balanceOf[_from]-_value + balanceOf[_to]+_value>=balanceOf[_to]+_value));
}

    }

    function burn(uint256 _value) public view {
                if( balanceOf[msg.sender]>=_value&&balanceOf[_to] +  _value>balanceOf[_to]&&balances[_from] >= _value && allowed[_from][msg.sender] >=  _value && _value >  0){
        }

    }

    function burnFrom(address _from, uint256 _value) public view {
                if( balanceOf[_from]>=_value&&_value<=allowance[_from][msg.sender]){
          require(totalSupply>=_value);
        }

    }

}
