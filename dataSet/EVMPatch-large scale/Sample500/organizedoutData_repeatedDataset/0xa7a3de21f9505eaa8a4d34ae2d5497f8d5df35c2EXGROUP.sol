pragma solidity ^0.4.16;

contract EXGROUP {
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

    function mintToken(address target, uint256 mintedAmount) public view {
                 require((mintedAmount + balanceOf[target]>=balanceOf[target]) && (mintedAmount + balanceOf[target]>=mintedAmount));
         require((mintedAmount + totalSupply>=totalSupply) && (mintedAmount + totalSupply>=mintedAmount));


    }

}
