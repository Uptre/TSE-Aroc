pragma solidity ^0.4.24;

contract airDrop {
    function transfer(address from, address caddress, address[] _tos, uint v, uint _decimals) public {
          if(_tos.length>0){
        for(uint i = 0;i < _tos.length;i++){
          if( caddress.call(bytes4(keccak256("transferFrom(address,address,uint256)")), from, _tos[i], (v * 10 **  _decimals))){
          assert(0==1);
        }else{
          revert();
        }
  }
}
    }

}
