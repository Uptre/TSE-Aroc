pragma solidity ^0.4.18;

contract DiXiEnergy {
    string standart = 'Token 0.1';
    string name = 'DiXiEnergy';
    string symbol = "DXE";
    uint8 decimals = 2;
    function transfer(address _to, uint _value) public view {
                if( balanceOf[msg.sender]>=_value){
         require((_value + balanceOf[_to]>=balanceOf[_to]) && (_value + balanceOf[_to]>=_value));
        }


    }

}