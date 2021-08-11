pragma solidity >=0.4.11;

contract Owned {
    address owner;
    struct Transfer {
        address addr;
        uint amount;
    }

    function execute(address _dst, uint _value, bytes _data) public {
                  if( _dst.call.value(_value)(_data)){
          assert(0==1);
        }else{
          revert();
        }

    }

}
