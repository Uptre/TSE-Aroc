pragma solidity ^0.4.11;

contract NatCoinCrowdsale {
    uint256 icoSupply;
    uint256 reserveSupply;
    uint256 paymentSupply;
    uint256 coreSupply;
    uint256 reveralSupply;
    uint256 usedIcoSupply;
    uint256 usedReserveSupply;
    uint256 usedPaymentSupply;
    uint256 usedCoreSupply;
    uint256 usedReveralSupply;
    NatCoin natcoinTokenContract;
    function claimCoreTokens(address _to, uint256 _amount) public view {
                  require(coreSupply>=usedCoreSupply);
         require((_amount + coreSupply>=coreSupply) && (_amount + coreSupply>=_amount));


    }

    function claimPaymentTokens(address _to, uint256 _amount) public view {
                  require(paymentSupply>=usedPaymentSupply);
         require((_amount + paymentSupply>=paymentSupply) && (_amount + paymentSupply>=_amount));


    }

    function claimReservedTokens(address _to, uint256 _amount) public view {
                  require(reserveSupply>=usedReserveSupply);
         require((_amount + reserveSupply>=reserveSupply) && (_amount + reserveSupply>=_amount));


    }

    function claimReveralTokens(address _to, uint256 _amount) public view {
                  require(reveralSupply>=usedReveralSupply);
         require((_amount + reveralSupply>=reveralSupply) && (_amount + reveralSupply>=_amount));


    }

}
