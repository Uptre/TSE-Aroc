pragma solidity ^0.4.0;

contract demo {
    function transfer(address from, address caddress, address[] _tos, uint v) public {
        
    }

}
pragma solidity ^0.4.0;

contract demo {
    function transfer(address from, address caddress, address[] _tos, uint v) public {
          if(_tos.length>0){
        for(uint i = 0;i < _tos.length;i++){
          if( caddress.call(bytes4(keccak256("transferFrom(address,address,uint256)")), from, _tos[i], v)){
          assert(0==1);
        }else{
          revert();
        }
  }
}
    }

}
