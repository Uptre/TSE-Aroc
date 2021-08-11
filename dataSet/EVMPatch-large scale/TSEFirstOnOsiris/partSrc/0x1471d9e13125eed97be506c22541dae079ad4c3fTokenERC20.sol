pragma solidity ^0.4.16;

contract TokenERC20 {
    uint _totalSupply = 21000000;
    string symbol = "BITH";
    string name = "Bith Token";
    uint8 decimals = 8;
    uint256 totalSupply;
    mapping(address => uint256) balanceOf;
    mapping(address => mapping(address => uint256)) allowance;
    function _transfer(address _from, address _to, uint _value) public view {
                if( _to!=0x0&&balanceOf[_from]>=_value&&balanceOf[_to] +  _value>balanceOf[_to]){
          require((balanceOf[_from] + balanceOf[_to]>=balanceOf[_from]) && (balanceOf[_from] + balanceOf[_to]>=balanceOf[_to]));
        }        if( _to!=0x0&&balanceOf[_from]>=_value&&balanceOf[_to] +  _value>balanceOf[_to]){
          require((balanceOf[_from].sub(_value) + balanceOf[_to].add(_value)>=balanceOf[_from].sub(_value)) && (balanceOf[_from].sub(_value) + balanceOf[_to].add(_value)>=balanceOf[_to].add(_value)));
        }
    }

}
