pragma solidity ^0.4.0;

contract IntegerOverflowAdd {
    mapping(address => uint256) balanceOf;
    function transfer(address _to, uint256 _value) public view {
              if( balanceOf[msg.sender]>=_value){
         require((_value + balanceOf[_to]>=balanceOf[_to]) && (_value + balanceOf[_to]>=_value));
        }


    }

}
