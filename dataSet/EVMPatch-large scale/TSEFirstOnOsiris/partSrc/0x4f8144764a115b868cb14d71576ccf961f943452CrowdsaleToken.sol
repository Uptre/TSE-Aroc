pragma  solidity  ^0.4.16;

contract CrowdsaleToken {
    string standard = "AfterSchool Token v1.0";
    string name = "AfterSchool Token";
    string symbol = "AST";
    uint decimals = 18;
    address multisig = 0x8Dab59292A76114776B4933aD6F1246Bf647aB90;
    uint PRICE = 5800;
    struct ContributorData {
        uint contributionAmount;
        uint tokensIssued;
    }

    mapping(address => ContributorData) contributorList;
    uint nextContributorIndex;
    mapping(uint => address) contributorIndexes;
    state crowdsaleState = state.pendingStart;
    enum state{pendingStart, crowdsale, crowdsaleEnded}
    uint BEGIN_TIME = 1506420000;
    uint END_TIME = 1509012000;
    uint minCap = 3500 ether;
    uint maxCap = 50000 ether;
    uint ethRaised = 0;
    uint tokenTotalSupply = 800000000 * 10 ** decimals;
    uint crowdsaleTokenCap = 480000000 * 10 ** decimals;
    uint foundersAndTeamTokens = 120000000 * 10 ** decimals;
    uint advisorAndAmbassadorTokens = 56000000 * 10 ** decimals;
    uint investorTokens = 8000000 * 10 ** decimals;
    uint afterschoolContributorTokens = 56000000 * 10 ** decimals;
    uint futurePartnerTokens = 64000000 * 10 ** decimals;
    bool foundersAndTeamTokensClaimed = false;
    bool advisorAndAmbassadorTokensClaimed = false;
    bool investorTokensClaimed = false;
    bool afterschoolContributorTokensClaimed = false;
    bool futurePartnerTokensClaimed = false;
    uint nextContributorToClaim;
    mapping(address => bool) hasClaimedEthWhenFail;
    function createTokens(address _contributor) public view {
                 require((1 + nextContributorIndex>=nextContributorIndex) && (1 + nextContributorIndex>=1));
         require((1 + nextContributorIndex>=nextContributorIndex) && (1 + nextContributorIndex>=1));
         require((_amount + contributorList[_contributor]._amount>=contributorList[_contributor]._amount) && (_amount + contributorList[_contributor]._amount>=_amount));
         require((msg.value + contributorList[_contributor].msg.value>=contributorList[_contributor].msg.value) && (msg.value + contributorList[_contributor].msg.value>=msg.value));
         require((msg.value + contributorList[_contributor].msg.value>=contributorList[_contributor].msg.value) && (msg.value + contributorList[_contributor].msg.value>=msg.value));
         require((msg.value + contributorList[_contributor].msg.value>=contributorList[_contributor].msg.value) && (msg.value + contributorList[_contributor].msg.value>=msg.value));

if( !(msg.value > (maxCap - ethRaised))&&ethRaised + contributionAmount >  minCap && minCap >  ethRaised ){
        if( ethRaised + contributionAmount ==  maxCap && ethRaised <  maxCap&&contributorList[_contributor].contributionAmount == 0){
         require((1 + nextContributorIndex>=nextContributorIndex) && (1 + nextContributorIndex>=1));
        }
         require((1 + nextContributorIndex>=nextContributorIndex) && (1 + nextContributorIndex>=1));
        if( ethRaised + contributionAmount ==  maxCap && ethRaised <  maxCap&&!(contributorList[_contributor].contributionAmount == 0)){
         require((msg.value + contributorList[_contributor].msg.value>=contributorList[_contributor].msg.value) && (msg.value + contributorList[_contributor].msg.value>=msg.value));
        }
         require((msg.value + contributorList[_contributor].msg.value>=contributorList[_contributor].msg.value) && (msg.value + contributorList[_contributor].msg.value>=msg.value));
         require((msg.value + contributorList[_contributor].msg.value>=contributorList[_contributor].msg.value) && (msg.value + contributorList[_contributor].msg.value>=msg.value));
         require((msg.value + contributorList[_contributor].msg.value>=contributorList[_contributor].msg.value) && (msg.value + contributorList[_contributor].msg.value>=msg.value));
}


    }

}
pragma solidity ^0.4.15;

contract CrowdsaleToken {
    string standard = "AfterSchool Token v1.0";
    string name = "AfterSchool Token";
    string symbol = "AST";
    uint decimals = 18;
    address multisig = 0x8Dab59292A76114776B4933aD6F1246Bf647aB90;
    uint PRICE = 5800;
    struct ContributorData {
        uint contributionAmount;
        uint tokensIssued;
    }

    mapping(address => ContributorData) contributorList;
    uint nextContributorIndex;
    mapping(uint => address) contributorIndexes;
    state crowdsaleState = state.pendingStart;
    enum state{pendingStart, crowdsale, crowdsaleEnded}
    uint BEGIN_TIME = 1506420000;
    uint END_TIME = 1509012000;
    uint minCap = 3500 ether;
    uint maxCap = 50000 ether;
    uint ethRaised = 0;
    uint tokenTotalSupply = 800000000 * 10 ** decimals;
    uint crowdsaleTokenCap = 480000000 * 10 ** decimals;
    uint foundersAndTeamTokens = 120000000 * 10 ** decimals;
    uint advisorAndAmbassadorTokens = 56000000 * 10 ** decimals;
    uint investorTokens = 8000000 * 10 ** decimals;
    uint afterschoolContributorTokens = 56000000 * 10 ** decimals;
    uint futurePartnerTokens = 64000000 * 10 ** decimals;
    bool foundersAndTeamTokensClaimed = false;
    bool advisorAndAmbassadorTokensClaimed = false;
    bool investorTokensClaimed = false;
    bool afterschoolContributorTokensClaimed = false;
    bool futurePartnerTokensClaimed = false;
    uint nextContributorToClaim;
    mapping(address => bool) hasClaimedEthWhenFail;
    function createTokens(address _contributor) public view {
                 require((1 + nextContributorIndex>=nextContributorIndex) && (1 + nextContributorIndex>=1));
         require((_amount + contributorList[_contributor]._amount>=contributorList[_contributor]._amount) && (_amount + contributorList[_contributor]._amount>=_amount));
         require((msg.value + contributorList[_contributor].msg.value>=contributorList[_contributor].msg.value) && (msg.value + contributorList[_contributor].msg.value>=msg.value));

if( !(msg.value > (maxCap - ethRaised))&&ethRaised + contributionAmount >  minCap && minCap >  ethRaised){
      if( ethRaised + contributionAmount ==  maxCap && ethRaised <  maxCap&&!(contributorList[_contributor].contributionAmount == 0)){
         require((msg.value + contributorList[_contributor].msg.value>=contributorList[_contributor].msg.value) && (msg.value + contributorList[_contributor].msg.value>=msg.value));
        }
      if( ethRaised + contributionAmount ==  maxCap && ethRaised <  maxCap&&contributorList[_contributor].contributionAmount == 0){
         require((1 + nextContributorIndex>=nextContributorIndex) && (1 + nextContributorIndex>=1));
        }
}


    }

}
