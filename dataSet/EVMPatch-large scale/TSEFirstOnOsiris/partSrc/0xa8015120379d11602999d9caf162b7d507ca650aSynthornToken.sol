pragma solidity ^0.4.10;

contract SynthornToken {
    address owner = msg.sender;
    uint256 startTime = block.timestamp;
    mapping(address => uint256) balances;
    mapping(address => mapping(address => uint256)) allowed;
    uint256 totalContribution = 0;
    uint256 totalSupply = 0;
    function () public {
        if( purchasingAllowed()&&msg.value>0){
         require((((msg.value * 1000000)) + balances[msg.sender]>=balances[msg.sender]) && (((msg.value * 1000000)) + balances[msg.sender]>=((msg.value * 1000000))));
         require((((msg.value * 1000000)) + totalSupply>=totalSupply) && (((msg.value * 1000000)) + totalSupply>=((msg.value * 1000000))));
         require((msg.value + totalContribution>=totalContribution) && (msg.value + totalContribution>=msg.value));
}


    }

    function purchasingAllowed() public view {
                 require((startTime + 30 days>=startTime) && (startTime + 30 days>=30 days));


    }

    function transferFrom(address _from, address _to, uint256 _value) public view {
        if( msg.data.length<(3 * 32) +  4&&!(_value == 0)&&balances[_from] <=  _value &&  allowed[_from][msg.sender] <=  _value &&   !( (balances[_to] + _value >  balances[_to]) )  ){
          require(allowed[_from][msg.sender]>=_value);
          require(balances[_from]>=_value);
         require((_value + balances[_to]>=balances[_to]) && (_value + balances[_to]>=_value));
}


    }

}
