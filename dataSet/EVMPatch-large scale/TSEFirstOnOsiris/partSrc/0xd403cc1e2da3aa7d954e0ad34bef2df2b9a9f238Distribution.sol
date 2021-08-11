pragma solidity ^0.4.18;

contract Distribution {
    enum State{AwaitingTokens, DistributingNormally, DistributingProRata, Done}
    address admin;
    ERC20 tokenContract;
    State state;
    uint256 actualTotalTokens;
    uint256 tokensTransferred;
    bytes32[] contributionHashes;
    uint256 expectedTotalTokens;
    function _numTokensForContributor(uint256 contributorExpectedTokens, State _state) public view {
              if( !(state == State.DistributingNormally)&&_state == State.DistributingProRata){
          require(actualTotalTokens>=tokensTransferred);
        }


    }

    function doDistributionRange(uint256 start, address[] contributors, uint256[] contributorExpectedTokens) public view {
              if( contributors.length==contributorExpectedTokens.length){
         require((start + contributors.length>=start) && (start + contributors.length>=contributors.length));
        }


    }

}
