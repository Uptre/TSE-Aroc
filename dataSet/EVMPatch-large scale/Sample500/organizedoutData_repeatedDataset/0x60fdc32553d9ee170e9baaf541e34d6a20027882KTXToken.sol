pragma solidity ^0.4.19;

contract KTXToken {
    mapping(address => bool) frozenAccount;
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
