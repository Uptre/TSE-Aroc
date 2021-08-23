pragma solidity ^0.4.11;

contract ClipperCoin {
    string name = "Clipper Coin";
    string symbol = "CCCT";
    uint decimals = 18;
    uint totalSupply = 200000000 ether;
    mapping(address => uint256) balanceOf;
    mapping(address => mapping(address => uint256)) allowance;
    function burn(uint256 _value) public view {
              if( balanceOf[msg.sender]>_value){
          require(totalSupply>=_value);
        }


    }

    function burnFrom(address _from, uint256 _value) public view {
              if( balanceOf[_from]>=_value){
          require(totalSupply>=_value);
        }


    }

}
