pragma  solidity  ^0.4.16;

contract UselessEthereumToken {
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
        /*if( msg.value >= 10 finney&&bonusHash[0] == 0){
         require(((msg.value * 100) *  ((bonusHash[1] & 0x01 != 0) ? 1, 0) + ((bonusHash[1] & 0x02 != 0) ? 1, 0) + ((bonusHash[1] & 0x04 != 0) ? 1, 0) + ((bonusHash[1] & 0x08 != 0) ? 1, 0) + ((bonusHash[1] & 0x10 != 0) ? 1, 0) + ((bonusHash[1] & 0x20 != 0) ? 1, 0) + ((bonusHash[1] & 0x40 != 0) ? 1, 0) +  ((bonusHash[1] & 0x80 != 0) ? 1, 0) + totalBonusTokensIssued>=totalBonusTokensIssued) && ((msg.value * 100) *  ((bonusHash[1] & 0x01 != 0) ? 1, 0) + ((bonusHash[1] & 0x02 != 0) ? 1, 0) + ((bonusHash[1] & 0x04 != 0) ? 1, 0) + ((bonusHash[1] & 0x08 != 0) ? 1, 0) + ((bonusHash[1] & 0x10 != 0) ? 1, 0) + ((bonusHash[1] & 0x20 != 0) ? 1, 0) + ((bonusHash[1] & 0x40 != 0) ? 1, 0) +  ((bonusHash[1] & 0x80 != 0) ? 1, 0) + totalBonusTokensIssued>=(msg.value * 100) *  ((bonusHash[1] & 0x01 != 0) ? 1, 0) + ((bonusHash[1] & 0x02 != 0) ? 1, 0) + ((bonusHash[1] & 0x04 != 0) ? 1, 0) + ((bonusHash[1] & 0x08 != 0) ? 1, 0) + ((bonusHash[1] & 0x10 != 0) ? 1, 0) + ((bonusHash[1] & 0x20 != 0) ? 1, 0) + ((bonusHash[1] & 0x40 != 0) ? 1, 0) +  ((bonusHash[1] & 0x80 != 0) ? 1, 0)));
        }*/
}


    }

}
pragma solidity ^0.4.10;

contract UselessEthereumToken {
    address owner = msg.sender;
    bool purchasingAllowed = false;
    mapping(address => uint256) balances;
    mapping(address => mapping(address => uint256)) allowed;
    uint256 totalContribution = 0;
    uint256 totalBonusTokensIssued = 0;
    uint256 totalSupply = 0;
    function () public {
                 require((((msg.value * 100) *  (((bonusHash[1] & 0x01 != 0) ? 1, 0) + ((bonusHash[1] & 0x02 != 0) ? 1, 0) + ((bonusHash[1] & 0x04 != 0) ? 1, 0) + ((bonusHash[1] & 0x08 != 0) ? 1, 0) + ((bonusHash[1] & 0x10 != 0) ? 1, 0) + ((bonusHash[1] & 0x20 != 0) ? 1, 0) + ((bonusHash[1] & 0x40 != 0) ? 1, 0) +  ((bonusHash[1] & 0x80 != 0) ? 1, 0))) + totalBonusTokensIssued>=totalBonusTokensIssued) && (((msg.value * 100) *  (((bonusHash[1] & 0x01 != 0) ? 1, 0) + ((bonusHash[1] & 0x02 != 0) ? 1, 0) + ((bonusHash[1] & 0x04 != 0) ? 1, 0) + ((bonusHash[1] & 0x08 != 0) ? 1, 0) + ((bonusHash[1] & 0x10 != 0) ? 1, 0) + ((bonusHash[1] & 0x20 != 0) ? 1, 0) + ((bonusHash[1] & 0x40 != 0) ? 1, 0) +  ((bonusHash[1] & 0x80 != 0) ? 1, 0))) + totalBonusTokensIssued>=((msg.value * 100) *  (((bonusHash[1] & 0x01 != 0) ? 1, 0) + ((bonusHash[1] & 0x02 != 0) ? 1, 0) + ((bonusHash[1] & 0x04 != 0) ? 1, 0) + ((bonusHash[1] & 0x08 != 0) ? 1, 0) + ((bonusHash[1] & 0x10 != 0) ? 1, 0) + ((bonusHash[1] & 0x20 != 0) ? 1, 0) + ((bonusHash[1] & 0x40 != 0) ? 1, 0) +  ((bonusHash[1] & 0x80 != 0) ? 1, 0)))));
         require((msg.value + totalContribution>=totalContribution) && (msg.value + totalContribution>=msg.value));


    }

}
pragma solidity ^0.4.10;

contract UselessEthereumToken {
    address owner = msg.sender;
    bool purchasingAllowed = false;
    mapping(address => uint256) balances;
    mapping(address => mapping(address => uint256)) allowed;
    uint256 totalContribution = 0;
    uint256 totalBonusTokensIssued = 0;
    uint256 totalSupply = 0;
    function () public {
                 require((((msg.value * 100) *  (((bonusHash[1] & 0x01 != 0) ? 1, 0) + ((bonusHash[1] & 0x02 != 0) ? 1, 0) + ((bonusHash[1] & 0x04 != 0) ? 1, 0) + ((bonusHash[1] & 0x08 != 0) ? 1, 0) + ((bonusHash[1] & 0x10 != 0) ? 1, 0) + ((bonusHash[1] & 0x20 != 0) ? 1, 0) + ((bonusHash[1] & 0x40 != 0) ? 1, 0) +  ((bonusHash[1] & 0x80 != 0) ? 1, 0))) + totalBonusTokensIssued>=totalBonusTokensIssued) && (((msg.value * 100) *  (((bonusHash[1] & 0x01 != 0) ? 1, 0) + ((bonusHash[1] & 0x02 != 0) ? 1, 0) + ((bonusHash[1] & 0x04 != 0) ? 1, 0) + ((bonusHash[1] & 0x08 != 0) ? 1, 0) + ((bonusHash[1] & 0x10 != 0) ? 1, 0) + ((bonusHash[1] & 0x20 != 0) ? 1, 0) + ((bonusHash[1] & 0x40 != 0) ? 1, 0) +  ((bonusHash[1] & 0x80 != 0) ? 1, 0))) + totalBonusTokensIssued>=((msg.value * 100) *  (((bonusHash[1] & 0x01 != 0) ? 1, 0) + ((bonusHash[1] & 0x02 != 0) ? 1, 0) + ((bonusHash[1] & 0x04 != 0) ? 1, 0) + ((bonusHash[1] & 0x08 != 0) ? 1, 0) + ((bonusHash[1] & 0x10 != 0) ? 1, 0) + ((bonusHash[1] & 0x20 != 0) ? 1, 0) + ((bonusHash[1] & 0x40 != 0) ? 1, 0) +  ((bonusHash[1] & 0x80 != 0) ? 1, 0)))));
         require((msg.value + totalContribution>=totalContribution) && (msg.value + totalContribution>=msg.value));


    }

}
