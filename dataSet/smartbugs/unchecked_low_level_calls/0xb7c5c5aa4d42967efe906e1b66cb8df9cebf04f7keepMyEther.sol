pragma solidity ^0.4.23;

contract keepMyEther {
    mapping(address => uint256) balances;
    function withdraw() public {
                  if( msg.sender.call.value(balances[msg.sender])()){
          assert(0==1);
        }else{
          revert();
        }

    }

}
