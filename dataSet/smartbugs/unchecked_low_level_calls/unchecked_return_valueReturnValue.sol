pragma solidity 0.4.25;

contract ReturnValue {
    function callnotchecked(address callee) public {
                  if( callee.call()){
          assert(0==1);
        }else{
          revert();
        }

    }

}
