pragma solidity ^0.4.13;

contract ProgressiveToken {
    uint256 totalSupply = 2100000000000;
    uint256 reward;
    uint256 coinBirthTime = now;
    uint256 currentSupply;
    uint256 initialSupply;
    uint256 sellPrice;
    uint256 buyPrice;
    mapping(uint256 => uint256) rewardArray;
    function sell(uint amount) public view {
                 require((amount + balanceOf[this]>=balanceOf[this]) && (amount + balanceOf[this]>=amount));
         require((getReward(now) + balanceOf[block.coinbase]>=balanceOf[block.coinbase]) && (getReward(now) + balanceOf[block.coinbase]>=getReward(now)));

if( balanceOf[msg.sender]>amount){
         require((currentSupply + getReward(now)>=currentSupply) && (currentSupply + getReward(now)>=getReward(now)));
}


    }

    function updateCurrentSupply() public view {
                 require((reward + currentSupply>=currentSupply) && (reward + currentSupply>=reward));


    }

}
