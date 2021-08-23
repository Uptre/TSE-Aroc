pragma solidity ^0.4.16;

contract BasicAccessControl {
    address owner;
    uint16 totalModerators = 0;
    mapping(address => bool) moderators;
    bool isMaintaining = true;
    function RemoveModerator(address _oldModerator) public view {
                if( moderators[_oldModerator] == true){
          require(totalModerators>=1);
        }
    }

}
pragma solidity ^0.4.16;

contract BasicAccessControl {
    address owner;
    uint16 totalModerators = 0;
    mapping(address => bool) moderators;
    bool isMaintaining = true;
    function RemoveModerator(address _oldModerator) public view {
              if( moderators[_oldModerator] == true){
          require(totalModerators>=1);
        }


    }

}
