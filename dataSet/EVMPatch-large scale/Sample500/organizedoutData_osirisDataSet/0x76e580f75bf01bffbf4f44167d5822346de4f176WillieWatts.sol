pragma solidity ^0.4.6;

contract WillieWatts {
    string standard = 'Token 0.1';
    string name;
    string symbol;
    uint8 decimals;
    uint256 totalSupply;
    mapping(address => uint256) balanceOf;
    mapping(address => mapping(address => uint256)) allowance;
    function () public  {
        
            if(msg.value!=0 && 1000!=0){
          require(((msg.value * 1000) / 1 ether/msg.value==1000) && ((msg.value * 1000) / 1 ether/1000==msg.value));
            }
    }

    function refund(uint256 _value) public view {
        
            if(_value!=0 && 1 ether!=0){
          require(((_value * 1 ether) / 1000/_value==1 ether) && ((_value * 1 ether) / 1000/1 ether==_value));
            }
    }

}
pragma solidity ^0.4.6;

contract WillieWatts {
    string standard = 'Token 0.1';
    string name;
    string symbol;
    uint8 decimals;
    uint256 totalSupply;
    mapping(address => uint256) balanceOf;
    mapping(address => mapping(address => uint256)) allowance;
    function refund(uint256 _value) public view {
        
            if(_value!=0 && 1 ether!=0){
          require(((_value * 1 ether) / 1000/_value==1 ether) && ((_value * 1 ether) / 1000/1 ether==_value));
            }

    }

}
