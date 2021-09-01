pragma  solidity  ^0.4.16;

contract CosmosToken {
    address owner = msg.sender;
    bool purchasingAllowed = false;
    mapping(address => uint256) balances;
    mapping(address => mapping(address => uint256)) allowed;
    uint256 totalContribution = 0;
    uint256 totalSupply = 0;
    function () public {
                if( !(!purchasingAllowed)&&!(msg.value == 0)){
         require((msg.value + totalContribution>=totalContribution) && (msg.value + totalContribution>=msg.value));
        }


    }

    function transferFrom(address _from, address _to, uint256 _value) public view {
        if( !(msg.data.length < (3 * 32) +  4)&&!(_value == 0)&&balances[_from] <=  _value &&  allowed[_from][msg.sender] <=  _value &&   !( balances[_to] + _value >  balances[_to] )   ){
          require(balances[_from]>=_value);
          require(allowed[_from][msg.sender]>=_value);
}


    }

}