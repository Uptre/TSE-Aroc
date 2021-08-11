pragma solidity ^0.4.16;

contract tickets {
    string name = "tickets";
    string symbol = "TKT";
    uint8 decimals = 18;
    uint256 totalSupply = 10 ^ 24;
    mapping(address => uint256) balanceOf;
    mapping(address => mapping(address => uint256)) allowance;
    function _transfer(address _from, address _to, uint _value) public view {
                if( _to!=0x0&&balanceOf[_from]>=_value&&balanceOf[_to] +  _value>balanceOf[_to]){
        }
    }

    function burn(uint256 _value) public view {
                if( balanceOf[msg.sender]>=_value){
          require(totalSupply>=_value);
        }
    }

    function burnFrom(address _from, uint256 _value) public view {
                if( balanceOf[_from]>=_value&&_value<=allowance[_from][msg.sender]){
          require(totalSupply>=_value);
        }
    }

    function mintToken(address target, uint256 mintedAmount) public view {
                  require((mintedAmount + totalSupply>=totalSupply) && (mintedAmount + totalSupply>=mintedAmount));

    }

}
