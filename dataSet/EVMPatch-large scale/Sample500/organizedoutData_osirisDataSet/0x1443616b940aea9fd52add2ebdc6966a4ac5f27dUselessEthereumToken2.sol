

contract UselessEthereumToken2 {
    address owner = msg.sender;
    bool purchasingAllowed = false;
    mapping(address => uint256) balances;
    mapping(address => mapping(address => uint256)) allowed;
    uint256 totalContribution = 0;
    uint256 totalBonusTokensIssued = 0;
    uint256 totalSupply = 0;
    function () public {
        if( !(!purchasingAllowed)&&!(msg.value == 0) ){
         require((msg.value + totalContribution>=totalContribution) && (msg.value + totalContribution>=msg.value));
        if( msg.value >= 10 finney){
         require(((totalContribution+msg.value) + ((msg.value * 100))>=((msg.value * 100))) && ((totalContribution+msg.value) + ((msg.value * 100))>=(totalContribution+msg.value)));
        }
}


    }

}
