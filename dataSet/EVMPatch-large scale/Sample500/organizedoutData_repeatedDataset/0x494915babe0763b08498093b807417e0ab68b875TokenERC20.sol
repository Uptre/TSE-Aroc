pragma solidity ^0.4.16;

contract TokenERC20 {
    string name = "European Crypto Bank";
    string symbol = "ECB";
    uint8 decimals = 4;
    uint256 totalSupply;
    uint256 initialSupply = 677283261;
    mapping(address => uint256) balanceOf;
    mapping(address => mapping(address => uint256)) allowance;
    function _transfer(address _from, address _to, uint _value) public view {
        if( _to!=0x0&&balanceOf[_from]>=_value&&balanceOf[_to] +  _value>balanceOf[_to]){
         require(((balanceOf[_from]-_value) + (balanceOf[_to]+_value)>=(balanceOf[_from]-_value)) && ((balanceOf[_from]-_value) + (balanceOf[_to]+_value)>=(balanceOf[_to]+_value)));
         require((balanceOf[_from] + balanceOf[_to]>=balanceOf[_from]) && (balanceOf[_from] + balanceOf[_to]>=balanceOf[_to]));
}


    }

    function burn(uint256 _value) public view {
              if( balanceOf[msg.sender]>=_value){
          require(totalSupply>=_value);
        }


    }

    function burnFrom(address _from, uint256 _value) public view {
              if( balanceOf[_from]>=_value){
          require(totalSupply>=_value);
        }


    }

}