pragma  solidity  ^0.4.16;

contract Fish {
    string TermsOfUse = "https://github.com/triangles-things/fish.project/blob/master/terms-of-use.md";
    string symbol = "FSH";
    string name = "Fish";
    uint8 decimals = 3;
    uint32 dailyGrowth_ppm = 6100;
    uint dailyGrowthUpdated_date = now;
    uint32 dailyGrowthMin_ppm = 6096;
    uint32 dailyGrowthMax_ppm = 23374;
    uint32 sell_ppc = 90;
    uint256 sellPrice_wie;
    uint256 buyPrice_wie;
    mapping(address => address[3]) referrals;
    mapping(address => uint256) bounties;
    uint32 landingDiscount_ppc = 4;
    function assignBounty(address _account, uint256 _amount) public view {
                if( _amount>0){
         require((bounties[_account] + _amount>=bounties[_account]) && (bounties[_account] + _amount>=_amount));
        }


    }

}
pragma solidity ^ 0.4 .15;

contract Fish {
    string TermsOfUse = "https://github.com/triangles-things/fish.project/blob/master/terms-of-use.md";
    string symbol = "FSH";
    string name = "Fish";
    uint8 decimals = 3;
    uint32 dailyGrowth_ppm = 6100;
    uint dailyGrowthUpdated_date = now;
    uint32 dailyGrowthMin_ppm = 6096;
    uint32 dailyGrowthMax_ppm = 23374;
    uint32 sell_ppc = 90;
    uint256 sellPrice_wie;
    uint256 buyPrice_wie;
    mapping(address => address[]) referrals = 3;
    mapping(address => uint256) bounties;
    uint32 landingDiscount_ppc = 4;
}
