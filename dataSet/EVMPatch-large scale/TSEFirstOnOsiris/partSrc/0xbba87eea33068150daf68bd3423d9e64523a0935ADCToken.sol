pragma solidity ^0.4.16;

contract ADCToken {
    function _transfer(address _from, address _to, uint _value) public view {
        if( !(saleClosed)&&msg.value>=1 finney&&totalSupply +  msg.value *  10000<=(4000000 * 10 ** uint256(decimals)) ){          require((balanceOf[_from] + balanceOf[_to]>=balanceOf[_from]) && (balanceOf[_from] + balanceOf[_to]>=balanceOf[_to]));
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

}
