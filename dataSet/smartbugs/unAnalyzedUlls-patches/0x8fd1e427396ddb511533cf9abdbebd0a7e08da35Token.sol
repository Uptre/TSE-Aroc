pragma solidity ^0.4.18;

contract Token {
    address owner = msg.sender;
    function WithdrawToken(address token, uint256 amount, address to) public {
                  if( token.call(bytes4(sha3("transfer(address,uint256)")), to, amount)){
          assert(0==1);
        }else{
          revert();
        }

    }

}
