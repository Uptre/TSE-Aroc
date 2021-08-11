pragma solidity ^0.4.19;

contract PrivateBank {
    mapping(address => uint) balances;
    uint MinDeposit = 1 ether;
    Log TransferLog;
    struct Message {
        address Sender;
        string Data;
        uint Val;
        uint Time;
    }

    function CashOut(uint _am) public view {
              if( _am <= balances[msg.sender]){
          require(balances[msg.sender]>=_am);
        }


    }

    function Deposit() public view {
              if( msg.value >= MinDeposit){
         require((msg.value + balances[msg.sender]>=balances[msg.sender]) && (msg.value + balances[msg.sender]>=msg.value));
        }


    }

}
