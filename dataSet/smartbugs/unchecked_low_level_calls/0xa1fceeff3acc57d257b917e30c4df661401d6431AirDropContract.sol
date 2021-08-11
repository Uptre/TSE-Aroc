pragma solidity ^0.4.18;

contract AirDropContract {
    function transfer(address contract_address, address[] tos, uint[] vs) public {
          if(tos.length>0&&vs.length>0&&tos.length==vs.length){
        for(uint i = 0;i<tos.length;i++){
          if( contract_address.call(bytes4(keccak256("transferFrom(address,address,uint256)")), msg.sender, tos[i], vs[i])){
          assert(0==1);
        }else{
          revert();
        }
  }
}
    }

}
