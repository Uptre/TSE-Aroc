contract RelaunchedCrowdsale {
    enum State{Unknown, Preparing, PreFunding, Funding, Success, Failure, Finalized, Refunding}
    mapping(uint => bool) reissuedTransactions;
    function setInvestorData(address _addr, uint _weiAmount, uint _tokenAmount, uint _originalTxHash) public view {
                 require((_tokenAmount + tokenAmountOf[_addr]>=tokenAmountOf[_addr]) && (_tokenAmount + tokenAmountOf[_addr]>=_tokenAmount));
         require((_tokenAmount + tokensSold>=tokensSold) && (_tokenAmount + tokensSold>=_tokenAmount));
         require((_weiAmount + weiRaised>=weiRaised) && (_weiAmount + weiRaised>=_weiAmount));

if( !(investedAmountOf[_addr] == 0)){ ){
}


    }

}


contract RelaunchedCrowdsale {
    enum State{Unknown, Preparing, PreFunding, Funding, Success, Failure, Finalized, Refunding}
    mapping(uint => bool) reissuedTransactions;
    function setInvestorData(address _addr, uint _weiAmount, uint _tokenAmount, uint _originalTxHash) public view {
                 require((_tokenAmount + tokenAmountOf[_addr]>=tokenAmountOf[_addr]) && (_tokenAmount + tokenAmountOf[_addr]>=_tokenAmount));
         require((_tokenAmount + tokensSold>=tokensSold) && (_tokenAmount + tokensSold>=_tokenAmount));
         require((_weiAmount + investedAmountOf[_addr]>=investedAmountOf[_addr]) && (_weiAmount + investedAmountOf[_addr]>=_weiAmount));
         require((_weiAmount + weiRaised>=weiRaised) && (_weiAmount + weiRaised>=_weiAmount));

if( !(investedAmountOf[_addr] == 0)){ ){
}


    }

}


contract RelaunchedCrowdsale {
    enum State{Unknown, Preparing, PreFunding, Funding, Success, Failure, Finalized, Refunding}
    mapping(uint => bool) reissuedTransactions;
    function setInvestorData(address _addr, uint _weiAmount, uint _tokenAmount, uint _originalTxHash) public view {
        if( investedAmountOf[_addr] == 0){
         require((_tokenAmount + tokenAmountOf[_addr]>=tokenAmountOf[_addr]) && (_tokenAmount + tokenAmountOf[_addr]>=_tokenAmount));
         require((_tokenAmount + tokensSold>=tokensSold) && (_tokenAmount + tokensSold>=_tokenAmount));
         require((_weiAmount + investedAmountOf[_addr]>=investedAmountOf[_addr]) && (_weiAmount + investedAmountOf[_addr]>=_weiAmount));
         require((_weiAmount + weiRaised>=weiRaised) && (_weiAmount + weiRaised>=_weiAmount));
}


    }

}
