pragma solidity ^0.4.0;

contract EasyOsmiumCrowdsale {
    function () public {
              if( balanceOf[this]>0){

            if(3000!=0 && msg.value!=0){
          require((3000 * msg.value / 1000000000000000000/3000==msg.value) && (3000 * msg.value / 1000000000000000000/msg.value==3000));
            }        }


    }

    function transfer(address _to, uint256 _value) public view {
              if( balanceOf[msg.sender]>=_value){
         require((_value + balanceOf[_to]>=balanceOf[_to]) && (_value + balanceOf[_to]>=_value));
        }


    }

}
