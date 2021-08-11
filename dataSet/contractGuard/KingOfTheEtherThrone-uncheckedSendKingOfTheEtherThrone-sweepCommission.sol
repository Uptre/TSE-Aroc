pragma solidity ^0.4.25;

contract KingOfTheEtherThrone {
    struct Monarch {
        address etherAddress;
        string name;
        uint claimPrice;
        uint coronationTimestamp;
    }

    address wizardAddress;
    uint startingClaimPrice = 100 finney;
    uint claimPriceAdjustNum = 3;
    uint claimPriceAdjustDen = 2;
    uint wizardCommissionFractionNum = 1;
    uint wizardCommissionFractionDen = 100;
    uint currentClaimPrice;
    Monarch currentMonarch;
    Monarch[] pastMonarchs;
    
    function sweepCommission(uint amount) public {
                  if( bool a = wizardAddress.send(amount)){
          assert(0==1);
        }else{
          revert();
        }

    }

}
