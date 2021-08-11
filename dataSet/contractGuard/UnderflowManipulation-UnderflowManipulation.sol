pragma solidity ^0.4.25;

contract UnderflowManipulationr {
    address public owner;
    uint256 public manipulateMe = 10;
    uint[] public bonusCodes;

     function popBonusCode() public{
        if(bonusCodes.length >=0) {
            require(bonusCodes.length >1);
        }
    }
}