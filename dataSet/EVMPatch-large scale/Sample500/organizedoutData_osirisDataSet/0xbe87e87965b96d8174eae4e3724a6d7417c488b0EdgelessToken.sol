pragma solidity ^0.4.6;

contract EdgelessToken {
    string standard = 'ERC20';
    string name = 'Edgeless';
    string symbol = 'EDG';
    uint8 decimals = 0;
    uint256 totalSupply;
    uint256 currentInterval = 1;
    uint256 intervalLength = 30 days;
    uint256 startTime = 1490112000;
    address owner;
    bool burned;
    mapping(address => uint256) balanceOf;
    mapping(address => mapping(address => uint256)) allowance;
    mapping(address => mapping(uint256 => uint256)) locked;
    function getInterval() public view {
                 require((currentInterval * intervalLength + startTime>=currentInterval * intervalLength) && (currentInterval * intervalLength + startTime>=startTime));

            if(currentInterval!=0 && intervalLength!=0){
          require((currentInterval * intervalLength/currentInterval==intervalLength) && (currentInterval * intervalLength/intervalLength==currentInterval));
            }        if( now > currentInterval * intervalLength +  startTime){

          require(intervalLength!= 0);
          require(now>=startTime);
        }
    }
}