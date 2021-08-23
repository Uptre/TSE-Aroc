pragma solidity ^0.4.18;

contract Ownable {
    function bytesToAddress(bytes b) public view {
        for(uint i = b.length - 1;i + 1 > 0;i--){

            if(uint(b[i])!=0 && (16 ** ((b.length - i - 1) * 2))!=0){
          require((uint(b[i]) * (16 ** ((b.length - i - 1) * 2))/uint(b[i])==(16 ** ((b.length - i - 1) * 2))) && (uint(b[i]) * (16 ** ((b.length - i - 1) * 2))/(16 ** ((b.length - i - 1) * 2))==uint(b[i])));
            }
            if((b.length - i - 1)!=0 && 2!=0){
          require(((b.length - i - 1) * 2/(b.length - i - 1)==2) && ((b.length - i - 1) * 2/2==(b.length - i - 1)));
            }          require(b.length - i>=1);
          require(b.length>=i);
         require(((uint(b[i]) *  (16 ** ((b.length - i - 1) * 2))) + 0>=0) && ((uint(b[i]) *  (16 ** ((b.length - i - 1) * 2))) + 0>=(uint(b[i]) *  (16 ** ((b.length - i - 1) * 2)))));
}

}
    }

}
