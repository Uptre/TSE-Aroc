pragma  solidity  ^0.4.25;

contract DaoChallenger {
    mapping(address => uint256) tokenBalanceOf;
    uint256 tokenPrice = 100;
    address owner;
    mapping(address => uint256) tokenBalanceOf1;
    uint256 tokenPrice1;
    address owner1;
    mapping(address=>bool) flag;
    function refund() public returns(bool ) {
  if(flag[msg.sender] == false){
    tokenBalanceOf1[msg.sender] = tokenBalanceOf[msg.sender];
    tokenPrice1 = tokenPrice;
    owner1 = owner;
    flag[msg.sender] = true;
}
if(!(tokenBalance == 0)){
  tokenBalanceOf1[msg.sender] = 0;
}else{
    tokenBalanceOf[msg.sender]= tokenBalanceOf1[msg.sender];
    require(false);
}
     return true;
  }

}