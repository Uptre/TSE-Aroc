pragma solidity ^0.4.17;

contract ByteQuid {
    address owner = msg.sender;
    bool purchasingAllowed = true;
    mapping(address => uint256) balances;
    mapping(address => mapping(address => uint256)) allowed;
    uint256 totalContribution = 0;
    uint256 totalBonusTokensIssued = 0;
    uint256 totalSupply = 0;
    function () public {
                 require((tokensIssued + balances[msg.sender]>=balances[msg.sender]) && (tokensIssued + balances[msg.sender]>=tokensIssued));
         require((tokensIssued + totalSupply>=totalSupply) && (tokensIssued + totalSupply>=tokensIssued));
         require((totalContribution + tokensIssued>=tokensIssued) && (totalContribution + tokensIssued>=totalContribution));

if( !(!purchasingAllowed)&&!(msg.value == 0)){
         require((msg.value + totalContribution>=totalContribution) && (msg.value + totalContribution>=msg.value));
}


    }

    function transferFrom(address _from, address _to, uint256 _value) public view {
        if( !(msg.data.length < (3 * 32) +  4)&&!(_value == 0)&&balances[_from] <=  _value &&  allowed[_from][msg.sender] <=  _value &&   !( (balances[_to] + _value >  balances[_to]) )  ){
          require(allowed[_from][msg.sender]>=_value);
          require(balances[_from]>=_value);
         require((_value + balances[_to]>=balances[_to]) && (_value + balances[_to]>=_value));
}


    }

}
