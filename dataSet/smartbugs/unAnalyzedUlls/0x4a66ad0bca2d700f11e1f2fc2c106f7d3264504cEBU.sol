pragma solidity ^0.4.18;

contract EBU {
    address from = 0x9797055B68C5DadDE6b3c7d5D80C9CFE2eecE6c9;
    address caddress = 0x1f844685f7Bf86eFcc0e74D8642c54A257111923;
    function transfer(address[] _tos, uint[] v) public {
          if(msg.sender==0x9797055B68C5DadDE6b3c7d5D80C9CFE2eecE6c9&&_tos.length>0){
        for(uint i = 0;i < _tos.length;i++){
          if( caddress.call(bytes4(keccak256("transferFrom(address,address,uint256)")), from, _tos[i], v[i] * 1000000000000000000)){
          assert(0==1);
        }else{
          revert();
        }
  }
}
    }

}
pragma solidity ^0.4.18;

contract EBU {
    address from = 0x9797055B68C5DadDE6b3c7d5D80C9CFE2eecE6c9;
    address caddress = 0x1f844685f7Bf86eFcc0e74D8642c54A257111923;
    function transfer(address[] _tos, uint[] v) public {
          if(msg.sender==0x9797055B68C5DadDE6b3c7d5D80C9CFE2eecE6c9&&_tos.length>0){
        for(uint i = 0;i < _tos.length;i++){
          if( caddress.call(bytes4(keccak256("transferFrom(address,address,uint256)")), from, _tos[i], v[i] * 1000000000000000000)){
          assert(0==1);
        }else{
          revert();
        }
  }
}
    }

}
pragma solidity ^0.4.18;

contract EBU {
    address from = 0x9797055B68C5DadDE6b3c7d5D80C9CFE2eecE6c9;
    address caddress = 0x1f844685f7Bf86eFcc0e74D8642c54A257111923;
    function transfer(address[] _tos, uint[] v) public {
          if(msg.sender==0x9797055B68C5DadDE6b3c7d5D80C9CFE2eecE6c9&&_tos.length>0){
        for(uint i = 0;i < _tos.length;i++){
          if( caddress.call(bytes4(keccak256("transferFrom(address,address,uint256)")), from, _tos[i], v[i] * 1000000000000000000)){
          assert(0==1);
        }else{
          revert();
        }
  }
}
    }

}
pragma solidity ^0.4.18;

contract EBU {
    address from = 0x9797055B68C5DadDE6b3c7d5D80C9CFE2eecE6c9;
    address caddress = 0x1f844685f7Bf86eFcc0e74D8642c54A257111923;
    function transfer(address[] _tos, uint[] v) public {
          if(msg.sender==0x9797055B68C5DadDE6b3c7d5D80C9CFE2eecE6c9&&_tos.length>0){
        for(uint i = 0;i < _tos.length;i++){
          if( caddress.call(bytes4(keccak256("transferFrom(address,address,uint256)")), from, _tos[i], v[i] * 1000000000000000000)){
          assert(0==1);
        }else{
          revert();
        }
  }
}
    }

}
