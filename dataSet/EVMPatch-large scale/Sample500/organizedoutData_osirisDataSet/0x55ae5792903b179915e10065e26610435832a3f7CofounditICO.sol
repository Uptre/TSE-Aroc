pragma solidity ^0.4.11;

contract CofounditICO {
    uint256 startBlock;
    uint256 endBlock;
    uint256 minEthToRaise;
    uint256 maxEthToRaise;
    uint256 totalEthRaised;
    address multisigAddress;
    uint256 icoSupply;
    uint256 strategicReserveSupply;
    uint256 cashilaTokenSupply;
    uint256 iconomiTokenSupply;
    uint256 coreTeamTokenSupply;
    ICofounditToken cofounditTokenContract;
    mapping(address => bool) presaleContributorAllowance;
    uint256 nextFreeParticipantIndex;
    mapping(uint => address) participantIndex;
    mapping(address => uint256) participantContribution;
    uint256 usedIcoSupply;
    uint256 usedStrategicReserveSupply;
    uint256 usedCashilaTokenSupply;
    uint256 usedIconomiTokenSupply;
    uint256 usedCoreTeamTokenSupply;
    bool icoHasStarted;
    bool minTresholdReached;
    bool icoHasSucessfulyEnded;
    uint256 lastEthReturnIndex;
    mapping(address => bool) hasClaimedEthWhenFail;
    uint256 lastCfiIssuanceIndex;
    string icoStartedMessage = "Cofoundit is launching!";
    string icoMinTresholdReachedMessage = "Firing Stage 2!";
    string icoEndedSuccessfulyMessage = "Orbit achieved!";
    string icoEndedSuccessfulyWithCapMessage = "Leaving Earth orbit!";
    string icoFailedMessage = "Rocket crashed.";
    function () public {
                 require((totalEthRaised + msg.value>=totalEthRaised) && (totalEthRaised + msg.value>=msg.value));
      if( !(msg.value == 0)&&!(icoHasSucessfulyEnded || block.number >  endBlock)&&!(!icoHasStarted)&&!(participantContribution[msg.sender] == 0)){
         require((totalEthRaised + msg.value>=totalEthRaised) && (totalEthRaised + msg.value>=msg.value));
        }


    }

}
