pragma solidity ^0.4.25;

contract UnderflowManipulation {
    address public owner;
    uint256 public manipulateMe = 10;
    function UnderflowManipulation() {
        owner = msg.sender;
    }

    uint[] public bonusCodes;

    function pushBonusCode(uint code) {
        bonusCodes.push(code);
    }

    function popBonusCode() public returns(bool){
        require(bonusCodes.length >=0);  // this is a tautology
        bonusCodes.length = bonusCodes.length-1; // an underflow can be caused here
        if(bonusCodes.length > 255){
            return false;
        }else{
            return true;
        }
    }

    function modifyBonusCode(uint index, uint update)  {
        require(index < bonusCodes.length);
        bonusCodes[index] = update; // write to any index less than bonusCodes.length
    }

    function printBonusCodeLen() view returns(uint256){
        return bonusCodes.length;
    }

}