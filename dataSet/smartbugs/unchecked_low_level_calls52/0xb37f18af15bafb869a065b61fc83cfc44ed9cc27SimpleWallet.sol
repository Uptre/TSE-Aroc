pragma solidity ^0.4.24;

contract SimpleWallet {
    address owner = msg.sender;
    uint depositsCount;
    function sendMoney(address _target, uint _value) public {
        
    }

}
pragma solidity ^0.4.24;

contract SimpleWallet {
    address owner = msg.sender;
    uint depositsCount;
    function sendMoney(address _target, uint _value) public {
                  if( _target.call.value(_value)()){
          assert(0==1);
        }else{
          revert();
        }

    }

}
