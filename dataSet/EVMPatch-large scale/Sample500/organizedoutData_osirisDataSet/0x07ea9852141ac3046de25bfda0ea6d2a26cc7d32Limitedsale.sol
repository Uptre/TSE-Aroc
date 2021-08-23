contract Limitedsale {
    uint256 totalSupply;
    mapping(address => uint256) balanceOf;
    function () public {
                if( balanceOf[this]>0){

            if(300!=0 && msg.value!=0){
          require((300 * msg.value / 10000000000000000/300==msg.value) && (300 * msg.value / 10000000000000000/msg.value==300));
            }        }


    }

}
pragma solidity ^0.4.18;

contract Limitedsale {
    uint256 totalSupply;
    mapping(address => uint256) balanceOf;
}
pragma solidity ^0.4.18;

contract Limitedsale {
    uint256 totalSupply;
    mapping(address => uint256) balanceOf;
}
