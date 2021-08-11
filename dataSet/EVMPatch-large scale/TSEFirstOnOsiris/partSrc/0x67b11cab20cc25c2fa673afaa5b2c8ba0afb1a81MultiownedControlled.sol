pragma solidity ^0.4.13;

contract MultiownedControlled {
    struct MultiOwnedOperationPendingState {
        uint yetNeeded;
        uint ownersDone;
        uint index;
    }

    address m_controller;
    bool m_attaching_enabled = true;
    function addOwner(address _owner) public view {
        
    }

    function getOwners() public view {
        
    }

    function removeOwner(address _owner) public view {
        
    }

}
pragma  solidity  ^0.4.16;

contract MultiownedControlled {
    struct MultiOwnedOperationPendingState {
        uint yetNeeded;
        uint ownersDone;
        uint index;
    }

    address m_controller;
    bool m_attaching_enabled = true;
    function addOwner(address _owner) public view {
        
    }

    function removeOwner(address _owner) public view {
        
    }

}
