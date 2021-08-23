pragma  solidity  ^0.4.16;

contract Disbursement {
    address owner;
    address receiver;
    uint disbursementPeriod;
    uint startDate;
    uint withdrawnTokens;
    Token token;
    function calcMaxWithdraw() public view {
        
          require(disbursementPeriod!= 0);

            if((token.balanceOf(this) + withdrawnTokens)!=0 && (now - startDate)!=0){
          require(((token.balanceOf(this) + withdrawnTokens) * (now - startDate)/(token.balanceOf(this) + withdrawnTokens)==(now - startDate)) && ((token.balanceOf(this) + withdrawnTokens) * (now - startDate)/(now - startDate)==(token.balanceOf(this) + withdrawnTokens)));
            }          require(now>=startDate);


    }

}
