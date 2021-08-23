contract Collegecoin {
    address owner = msg.sender;
    bool purchasingAllowed = true;
    mapping(address => uint256) balances;
    mapping(address => mapping(address => uint256)) allowed;
    uint256 totalContribution = 0;
    uint256 totalBonusTokensIssued = 0;
    uint256 totalSupply = 0;
    function () public {
        if( !(!purchasingAllowed)&&!(totalContribution >= 1250 ether)&&!(msg.value == 0)){
        require((((msg.value * 100)) + (tokensIssued+totalContribution)>=(tokensIssued+totalContribution)) && (((msg.value * 100)) + (tokensIssued+totalContribution)>=((msg.value * 100))));
         require((((msg.value * 100)) + totalBonusTokensIssued>=totalBonusTokensIssued) && (((msg.value * 100)) + totalBonusTokensIssued>=((msg.value * 100))));
         require((tokensIssued + balances[msg.sender]>=balances[msg.sender]) && (tokensIssued + balances[msg.sender]>=tokensIssued));
         require((tokensIssued + totalSupply>=totalSupply) && (tokensIssued + totalSupply>=tokensIssued));
         require((totalContribution + tokensIssued>=tokensIssued) && (totalContribution + tokensIssued>=totalContribution));

}


    }

}
