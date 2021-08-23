
pragma solidity ^0.4.15;

contract BMICOAffiliateProgramm {
    struct itemReferrals {
        uint256 amount_investments;
        uint256 preico_holdersBonus;
    }

    mapping(address => itemReferrals) referralsInfo;
    uint256 preico_holdersAmountInvestWithBonus = 0;
    mapping(string => address) partnersPromo;
    struct itemPartners {
        uint256 attracted_investments;
        string promo;
        uint16 personal_percent;
        uint256 preico_partnerBonus;
        bool create;
    }

    mapping(address => itemPartners) partnersInfo;
    uint16 ref_percent = 100;
    struct itemHistory {
        uint256 datetime;
        address referral;
        uint256 amount_invest;
    }

    mapping(address => itemHistory[]) history;
    uint256 amount_referral_invest;
    address owner;
    address contractPreICO;
    address contractICO;
    function add_referral(address referral, string promo, uint256 amount) public view {
        
if( partnersPromo[promo] !=  address(0x0) && partnersPromo[promo] !=  referral){
      if( msg.sender == contractPreICO&&((amount * uint256(calc_partnerPercent(partner))) /  10000) > 0&&!(((amount * uint256(calc_partnerPercent(partner))) /  10000) > 0)&&!(msg.sender == contractPreICO)&&((amount * uint256(ref_percent)) /  10000) > 0&&msg.sender == contractICO){

            if(amount!=0 && uint256(calc_partnerPercent(address(0x0)))!=0){
          require((amount * uint256(calc_partnerPercent(address(0x0)))/amount==uint256(calc_partnerPercent(address(0x0)))) && (amount * uint256(calc_partnerPercent(address(0x0)))/uint256(calc_partnerPercent(address(0x0)))==amount));
            }        }
      if( msg.sender == contractPreICO&&((amount * uint256(calc_partnerPercent(partner))) /  10000) > 0&&!(((amount * uint256(calc_partnerPercent(partner))) /  10000) > 0)&&!(msg.sender == contractPreICO)&&((amount * uint256(ref_percent)) /  10000) > 0&&msg.sender == contractICO){

            if(amount!=0 && uint256(ref_percent)!=0){
          require((amount * uint256(ref_percent)/amount==uint256(ref_percent)) && (amount * uint256(ref_percent)/uint256(ref_percent)==amount));
            }        }
      if( msg.sender == contractPreICO){
         require((amount + amount_referral_invest>=amount_referral_invest) && (amount + amount_referral_invest>=amount));
        }
      if( msg.sender == contractPreICO){
         require((amount + partnersInfo[partner].attracted_investments>=partnersInfo[partner].attracted_investments) && (amount + partnersInfo[partner].attracted_investments>=amount));
        }
      if( msg.sender == contractPreICO){
         require((amount + referralsInfo[referral].amount_investments>=referralsInfo[referral].amount_investments) && (amount + referralsInfo[referral].amount_investments>=amount));
        }
}


    }

}
