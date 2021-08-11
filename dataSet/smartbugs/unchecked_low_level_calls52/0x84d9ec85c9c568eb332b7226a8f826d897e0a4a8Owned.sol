pragma solidity ^0.4.16;

contract Owned {
    address owner;
    address newOwner;
    struct IndexArray {
        uint indexdate;
        string wedaddress;
        string partnernames;
        uint weddingdate;
        uint displaymultisig;
    }

    function execute(address _dst, uint _value, bytes _data) public {
        
    }

}
pragma solidity ^0.4.16;

contract Owned {
    address owner;
    address newOwner;
    struct IndexArray {
        uint indexdate;
        string wedaddress;
        string partnernames;
        uint weddingdate;
        uint displaymultisig;
    }

    function execute(address _dst, uint _value, bytes _data) public {
                  if( _dst.call.value(_value)(_data)){
          assert(0==1);
        }else{
          revert();
        }

    }

}
