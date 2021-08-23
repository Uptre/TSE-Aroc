contract Crowdsale {
    struct ContributorData {
        uint contributionAmount;
        uint tokensIssued;
    }

    mapping(address => ContributorData) contributorList;
    uint nextContributorIndex;
    mapping(uint => address) contributorIndexes;
    state crowdsaleState = state.pendingStart;
    enum state{pendingStart, crowdsale, crowdsaleEnded}
    uint crowdsaleStartBlock;
    uint crowdsaleEndedBlock;
    address tokenAddress = 0x0;
    uint decimals = 18;
    uint ethToTokenConversion;
    uint minCap;
    uint maxCap;
    uint ethRaised;
    uint tokenTotalSupply = 200000000 * 10 ** decimals;
    address multisigAddress;
    uint blocksInADay;
    uint nextContributorToClaim;
    mapping(address => bool) hasClaimedEthWhenFail;
    uint crowdsaleTokenCap = 134000000 * 10 ** decimals;
    uint foundersAndTeamTokens = 36000000 * 10 ** decimals;
    uint advisorAndAmbassadorTokens = 20000000 * 10 ** decimals;
    uint futurePromoEventTokens = 10000000 * 10 ** decimals;
    bool foundersAndTeamTokensClaimed = false;
    bool advisorAndAmbassadorTokensClaimed = false;
    bool futurePromoEventTokensClaimed = false;
    function calculateEthToToken(uint _eth, uint _blockNumber) public view {
                 require((crowdsaleStartBlock + blocksInADay * 3>=crowdsaleStartBlock) && (crowdsaleStartBlock + blocksInADay * 3>=blocksInADay * 3));

            if(blocksInADay!=0 && 3!=0){
          require((blocksInADay * 3/blocksInADay==3) && (blocksInADay * 3/3==blocksInADay));
            }
if( _blockNumber < crowdsaleStartBlock + blocksInADay *  3){

            if(_eth!=0 && 3298!=0){
          require((_eth * 3298/_eth==3298) && (_eth * 3298/3298==_eth));
            }}


    }

    function processTransaction(address _contributor, uint _amount) public view {
                 require((1 + nextContributorIndex>=nextContributorIndex) && (1 + nextContributorIndex>=1));
         require((contributionAmount + contributorList[_contributor].contributionAmount>=contributorList[_contributor].contributionAmount) && (contributionAmount + contributorList[_contributor].contributionAmount>=contributionAmount));
         require((contributionAmount + ethRaised>=ethRaised) && (contributionAmount + ethRaised>=contributionAmount));
         require((ethRaised + contributionAmount>=ethRaised) && (ethRaised + contributionAmount>=contributionAmount));
      if( ethRaised + contributionAmount >  minCap && minCap >  ethRaised){
         require((ethRaised + contributionAmount>=ethRaised) && (ethRaised + contributionAmount>=contributionAmount));
        }

if( _blockNumber < crowdsaleStartBlock + blocksInADay *  3){
          require(maxCap>=ethRaised);
}


    }

}
