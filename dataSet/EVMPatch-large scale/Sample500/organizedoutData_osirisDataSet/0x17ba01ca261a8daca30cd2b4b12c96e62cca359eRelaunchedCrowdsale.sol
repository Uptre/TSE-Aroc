

contract RelaunchedCrowdsale {
    enum State{Unknown, Preparing, PreFunding, Funding, Success, Failure, Finalized, Refunding}
    function setInvestorData(address _addr, uint _weiAmount, uint _tokenAmount) public view {
                  require((_weiAmount + weiRaised>=weiRaised) && (_weiAmount + weiRaised>=_weiAmount));
          require((_tokenAmount + tokensSold>=tokensSold) && (_tokenAmount + tokensSold>=_tokenAmount));

    }

}
