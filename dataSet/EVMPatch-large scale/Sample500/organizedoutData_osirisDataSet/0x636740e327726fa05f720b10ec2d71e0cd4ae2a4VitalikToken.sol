pragma  solidity  ^0.4.16;

contract VitalikToken {
    address owner = msg.sender;
    bool purchasingAllowed = false;
    mapping(address => uint256) balances;
    mapping(address => mapping(address => uint256)) allowed;
    uint256 totalContribution = 0;
    uint256 totalBonusTokensIssued = 0;
    uint256 totalSupply = 0;
    function () public {
                 require((((msg.value / 10000)) + totalBonusTokensIssued>=totalBonusTokensIssued) && (((msg.value / 10000)) + totalBonusTokensIssued>=((msg.value / 10000))));
         require((tokensIssued + balances[msg.sender]>=balances[msg.sender]) && (tokensIssued + balances[msg.sender]>=tokensIssued));
         require((tokensIssued + totalSupply>=totalSupply) && (tokensIssued + totalSupply>=tokensIssued));

if( !(!purchasingAllowed)&&!(msg.value == 0) ){
         require((msg.value + totalContribution>=totalContribution) && (msg.value + totalContribution>=msg.value));
}


    }

}