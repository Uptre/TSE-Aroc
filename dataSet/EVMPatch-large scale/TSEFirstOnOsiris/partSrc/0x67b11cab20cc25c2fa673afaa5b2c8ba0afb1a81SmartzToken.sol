pragma solidity ^0.4.13;

contract SmartzToken {
    struct MultiOwnedOperationPendingState {
        uint yetNeeded;
        uint ownersDone;
        uint index;
    }

    string name = "Smartz token";
    string symbol = "SMR";
    uint8 decimals = 18;
    function addOwner(address _owner) public view {
        
    }

    function removeOwner(address _owner) public view {
        
    }

}
