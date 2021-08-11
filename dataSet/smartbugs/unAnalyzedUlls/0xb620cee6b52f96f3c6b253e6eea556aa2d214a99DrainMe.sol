pragma solidity ^0.4.23;

contract DrainMe {
    address winner = 0x0;
    address owner;
    address firstTarget = 0x461ec7309F187dd4650EE6b4D25D93c922d7D56b;
    address secondTarget = 0x1C3E062c77f09fC61550703bDd1D59842C22c766;
    address[] players;
    mapping(address => bool) approvedPlayers;
    uint256 secret;
    uint256[] seed = (951828771, 158769871220);
    uint256[] balance;
    function callFirstTarget() public {
        
    }

    function callSecondTarget() public {
        
    }

    function winPrize() public {
        
    }

}
