pragma solidity ^0.4.16;

contract DailycoinCrowdsale {
    uint256 amountRaised = 0;
    uint256 tokensSold = 0;
    uint256 totalToSale = 150 * (10 ** 6) * (10 ** 8);
    bool crowdsaleClosed = false;
    uint deadline;
    address beneficiary;
    DailyCoinToken tokenReward;
    function () public view {
                if( !(crowdsaleClosed)){
          require((msg.value + msg.valueRaised>=msg.valueRaised) && (msg.value + msg.valueRaised>=msg.value));
        }

    }

    function getNumTokens(uint256 _value) public view {
        if( _value >= 10 *  10 ** 18&&now <= deadline -  35 days&&now <= deadline -  20 days ){        if( now <= deadline -  35 days){
        }
        if( now <= deadline -  35 days&&now <= deadline -  20 days){
        }
}

    }

}
