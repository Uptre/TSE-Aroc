pragma solidity ^0.4.8;

contract CreditBOND {
    uint yearlyBlockCount = 2102400;
    function getBondMultiplier(uint _creditAmount, uint _locktime) public view {
        
            if(yearlyBlockCount!=0 && 2!=0){
          require((yearlyBlockCount * 2/yearlyBlockCount==2) && (yearlyBlockCount * 2/2==yearlyBlockCount));
            }          require((block.number + yearlyBlockCount * 2>=block.number) && (block.number + yearlyBlockCount * 2>=yearlyBlockCount * 2));


    }

    function getNewCoinsIssued(uint _lockedBalance, uint _blockDifference, uint _percentReward) public view {
        
            if(100!=0 && yearlyBlockCount!=0){
          require((100 * yearlyBlockCount/100==yearlyBlockCount) && (100 * yearlyBlockCount/yearlyBlockCount==100));
            }
            if(_percentReward!=0 && _lockedBalance!=0){
          require((_percentReward * _lockedBalance/_percentReward==_lockedBalance) && (_percentReward * _lockedBalance/_lockedBalance==_percentReward));
            }
            if(_percentReward * _lockedBalance!=0 && _blockDifference!=0){
          require((_percentReward * _lockedBalance * _blockDifference/_percentReward * _lockedBalance==_blockDifference) && (_percentReward * _lockedBalance * _blockDifference/_blockDifference==_percentReward * _lockedBalance));
            }
          require((100 * yearlyBlockCount)!= 0);


    }

}
