pragma solidity ^0.4.19;

contract TariInvestment {
    address investmentAddress = 0x33eFC5120D99a63bdF990013ECaBbd6c900803CE;
    address majorPartnerAddress = 0x8f0592bDCeE38774d93bC1fd2c97ee6540385356;
    address minorPartnerAddress = 0xC787C3f6F75D7195361b64318CE019f90507f806;
    mapping(address => uint) balances;
    uint totalInvestment;
    uint availableRefunds;
    uint refundingDeadline;
    uint withdrawal_gas;
    enum State{Open, Refunding}
    State state = State.Open;
    function () public {
        if( state==State.Open){
         require((msg.value + balances[msg.sender]>=balances[msg.sender]) && (msg.value + balances[msg.sender]>=msg.value));
         require((msg.value + totalInvestment>=totalInvestment) && (msg.value + totalInvestment>=msg.value));
}


    }

    function execute_transfer(uint transfer_amount, uint gas_amount) public view {
                if( state==State.Open){

            if(transfer_amount!=0 && 15!=0){
          require((transfer_amount * 15 / 1000/transfer_amount==15) && (transfer_amount * 15 / 1000/15==transfer_amount));
            }        }


    }

}
