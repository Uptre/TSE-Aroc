pragma solidity ^0.4.18;

contract IQNICO {
    uint256 EXCHANGE_RATE = 350;
    uint256 START = 1517313600;
    uint256 availableTokens;
    address addressToSendEthereum;
    uint amountRaised;
    uint deadline;
    uint price;
    token tokenReward;
    mapping(address => uint256) balanceOf;
    function () public {
        if( now <  deadline&&now >=  START ){
          require((tokens.add(bonus) + balanceOf[msg.sender]>=balanceOf[msg.sender]) && (tokens.add(bonus) + balanceOf[msg.sender]>=tokens.add(bonus)));
          require((tokens.add(bonus) + msg.valueRaised>=msg.valueRaised) && (tokens.add(bonus) + msg.valueRaised>=tokens.add(bonus)));
          require(availableTokens>=tokens.add(bonus));
}


    }

}