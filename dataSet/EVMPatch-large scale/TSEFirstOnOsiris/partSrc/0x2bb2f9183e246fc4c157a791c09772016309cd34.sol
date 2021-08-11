/**
 *Submitted for verification at Etherscan.io on 2018-01-29
*/

contract Zhtong {
    address public owner;
      uint private result;
      function Set(){
          owner = msg.sender;
      }
      function assign(uint x, uint y) returns (uint){
          result = x + y;
      }
}