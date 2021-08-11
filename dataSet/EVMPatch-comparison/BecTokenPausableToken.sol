pragma solidity ^0.4.16;

contract PausableToken {
    function batchTransfer(address[] _receivers, uint256 _value) public view {
        
            if(uint256(_receivers.length)!=0 && _value!=0){
          require((uint256(_receivers.length) * _value/uint256(_receivers.length)==_value) && (uint256(_receivers.length) * _value/_value==uint256(_receivers.length)));
            }

    }

}
