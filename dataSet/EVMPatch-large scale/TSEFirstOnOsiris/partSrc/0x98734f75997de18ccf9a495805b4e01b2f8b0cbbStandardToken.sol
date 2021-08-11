pragma solidity ^0.4.15;

contract StandardToken {
    enum IcoState{Presale, Running, Paused, Finished}
    mapping(address => mapping(address => uint256)) allowed;
    function mint(address _holder, uint256 _value) public view {
                 require((_value + balances[_holder]>=balances[_holder]) && (_value + balances[_holder]>=_value));
         require((_value + totalSupply>=totalSupply) && (_value + totalSupply>=_value));

if( _holder!=address(0)&&_value!=0){
         require((totalSupply + _value>=totalSupply) && (totalSupply + _value>=_value));
}


    }

}
