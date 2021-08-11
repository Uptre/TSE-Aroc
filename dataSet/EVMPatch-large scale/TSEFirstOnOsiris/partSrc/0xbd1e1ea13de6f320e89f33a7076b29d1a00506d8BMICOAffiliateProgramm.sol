pragma  solidity  ^0.4.16;

contract BMICOAffiliateProgramm {
    mapping(string => address) partnersPromo;
    mapping(address => uint256) referrals;
    struct itemPartners {
        uint256 balance;
        string promo;
        bool create;
    }

    mapping(address => itemPartners) partnersInfo;
    uint256 ref_percent = 100;
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
        if( msg.sender ==  contractPreICO || msg.sender ==  contractICO&&partnersPromo[promo] !=  address(0x0) && partnersPromo[promo] !=  referral){

          require(10000!= 0);

            if(amount!=0 && ref_percent!=0){
          require((amount * ref_percent/amount==ref_percent) && (amount * ref_percent/ref_percent==amount));
            }
          require(10000!= 0);

            /*if(amount!=0 && uint256(calc_partnersPromo[promo]Percent(amount))!=0){
          require((amount * uint256(calc_partnersPromo[promo]Percent(amount))/amount==uint256(calc_partnersPromo[promo]Percent(amount))) && (amount * uint256(calc_partnersPromo[promo]Percent(amount))/uint256(calc_partnersPromo[promo]Percent(amount))==amount));
            } */        
         require((amount + amount_referral_invest>=amount_referral_invest) && (amount + amount_referral_invest>=amount));
      //  require((amount + partnersPromo[promo]sInfo[partnersPromo[promo]].balance>=partnersPromo[promo]sInfo[partnersPromo[promo]].balance) && (amount + partnersPromo[promo]sInfo[partnersPromo[promo]].balance>=amount));
         require((amount + referrals[referral]>=referrals[referral]) && (amount + referrals[referral]>=amount));
}


    }

}
pragma  solidity  ^0.4.16;

contract BMICOAffiliateProgramm {
    mapping(string => address) partnersPromo;
    mapping(address => uint256) referrals;
    struct itemPartners {
        uint256 balance;
        string promo;
        bool create;
    }

    mapping(address => itemPartners) partnersInfo;
    uint256 ref_percent = 100;
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
        if( msg.sender ==  contractPreICO || msg.sender ==  contractICO&&partnersPromo[promo] !=  address(0x0) && partnersPromo[promo] !=  referral){

          require(10000!= 0);

            if(amount!=0 && ref_percent!=0){
          require((amount * ref_percent/amount==ref_percent) && (amount * ref_percent/ref_percent==amount));
            }
          require(10000!= 0);

            /*if(amount!=0 && uint256(calc_partnersPromo[promo]Percent(amount))!=0){
          require((amount * uint256(calc_partnersPromo[promo]Percent(amount))/amount==uint256(calc_partnersPromo[promo]Percent(amount))) && (amount * uint256(calc_partnersPromo[promo]Percent(amount))/uint256(calc_partnersPromo[promo]Percent(amount))==amount));
            } */        
         require((amount + amount_referral_invest>=amount_referral_invest) && (amount + amount_referral_invest>=amount));
      //  require((amount + partnersPromo[promo]sInfo[partnersPromo[promo]].balance>=partnersPromo[promo]sInfo[partnersPromo[promo]].balance) && (amount + partnersPromo[promo]sInfo[partnersPromo[promo]].balance>=amount));
         require((amount + referrals[referral]>=referrals[referral]) && (amount + referrals[referral]>=amount));
}


    }

}
pragma solidity ^0.4.15;

contract BMICOAffiliateProgramm {
    mapping(string => address) partnersPromo;
    mapping(address => uint256) referrals;
    struct itemPartners {
        uint256 balance;
        string promo;
        bool create;
    }

    mapping(address => itemPartners) partnersInfo;
    uint256 ref_percent = 100;
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
        if( msg.sender ==  contractPreICO || msg.sender ==  contractICO&&partnersPromo[promo] !=  address(0x0) && partnersPromo[promo] !=  referral){

            if(amount!=0 && ref_percent!=0){
          require((amount * ref_percent/amount==ref_percent) && (amount * ref_percent/ref_percent==amount));
            }
            if(amount!=0 && uint256(calc_partnerPercent(amount))!=0){
          require((amount * uint256(calc_partnerPercent(amount))/amount==uint256(calc_partnerPercent(amount))) && (amount * uint256(calc_partnerPercent(amount))/uint256(calc_partnerPercent(amount))==amount));
            }         require((amount + amount_referral_invest>=amount_referral_invest) && (amount + amount_referral_invest>=amount));
         require((amount + partnersInfo[partner].balance>=partnersInfo[partner].balance) && (amount + partnersInfo[partner].balance>=amount));
         require((amount + referrals[referral]>=referrals[referral]) && (amount + referrals[referral]>=amount));
}


    }

}
