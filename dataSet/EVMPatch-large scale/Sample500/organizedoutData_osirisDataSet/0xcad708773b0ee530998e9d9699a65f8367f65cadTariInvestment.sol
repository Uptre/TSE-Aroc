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
    function withdraw() public view {
        if( !(state != State.Refunding)){

          require(totalInvestment!= 0);

            if(availableRefunds!=0 && balances[msg.sender]!=0){
          require((availableRefunds * balances[msg.sender]/availableRefunds==balances[msg.sender]) && (availableRefunds * balances[msg.sender]/balances[msg.sender]==availableRefunds));
            }        }


    }

}
