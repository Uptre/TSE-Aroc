pragma solidity ^0.4.16;

contract LegendsToken {
    string name = 'VIP';
    uint8 decimals = 18;
    string symbol = 'VIP';
    string version = 'VIP_0.1';
    mapping(address => uint) ownerVIP;
    mapping(address => mapping(address => uint)) allowed;
    uint totalVIP;
    uint start;
    address legendsCrowdfund;
    bool testing;
    function addTokens(address recipient, uint VIP) public view {
                 require((VIP + ownerVIP[recipient]>=ownerVIP[recipient]) && (VIP + ownerVIP[recipient]>=VIP));
         require((VIP + totalVIP>=totalVIP) && (VIP + totalVIP>=VIP));


    }

    function transferFrom(address _from, address _to, uint256 _value) public view {
              if( allowed[_from][msg.sender] >=  _value && ownerVIP[_from] >=  _value){
         require((_value + ownerVIP[_to]>=ownerVIP[_to]) && (_value + ownerVIP[_to]>=_value));
        }


    }

}
