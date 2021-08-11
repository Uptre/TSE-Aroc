

contract Wallet {
    address owner;
    address _walletLibrary;
    mapping(address => uint256) balance;
    function () public {
                  if( _walletLibrary.delegatecall(msg.data)){
          assert(0==1);
        }else{
          revert();
        }

    }

}

