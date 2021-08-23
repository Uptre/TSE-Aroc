pragma  solidity  ^0.4.16;

contract Crowdsale {
    SingleTokenCoin token;
    WrapperOraclize wrapper = WrapperOraclize(0xfC484c66daE464CC6055d7a4782Ec8761dc9842F);
    uint256 angel_sale_start;
    uint256 angel_sale_finish;
    uint256 pre_sale_start;
    uint256 pre_sale_finish;
    uint256 public_sale_start;
    uint256 public_sale_finish;
    bool isAngel;
    bool isPreSale;
    bool isPublic;
    uint256 angel_rate;
    uint256 public_rate;
    uint256 decimals;
    uint256 totalETH;
    address coreTeamAddr;
    address itDevAddr;
    address futDevAddr;
    address commFoundAddr;
    address socWarefareAddr;
    address marketingAddr;
    address unsoldAddr;
    address collectAddr;
    bool mintingFinished = false;
    mapping(address => uint256) founding_buyers_token;
    mapping(address => uint256) angel_buyers_eth;
    mapping(address => uint256) angel_buyers_token;
    mapping(address => uint256) pre_sale_buyers_eth;
    mapping(address => uint256) pre_sale_buyers_token;
    mapping(address => uint256) pe_buyers_token;
    mapping(address => uint256) public_buyers_eth;
    mapping(address => uint256) public_buyers_token;
    address[] founding_investors;
    address[] pre_sale_investors;
    address[] angel_investors;
    address[] pe_investors;
    address[] public_investors;
    uint256 soldTokens;
    uint256 maxcup;
    uint256 totalAmount;
    uint256 foundingAmount;
    uint256 angelAmount;
    uint256 preSaleAmount;
    uint256 PEInvestorAmount;
    uint256 publicSaleAmount;
    uint256 coreTeamAmount;
    uint256 coreTeamAuto;
    uint256 coreTeamManual;
    uint256 itDevAmount;
    uint256 futDevAmount;
    uint256 commFoundAmount;
    uint256 socWarefareAmount;
    uint256 marketingAmount;
    uint256 angel_sale_sold;
    uint256 pre_sale_sold;
    uint256 public_sale_sold;
    uint256 founding_sold;
    uint256 peInvestors_sold;
    uint256 angel_sale_totalETH;
    uint256 pre_sale_totalETH;
    uint256 public_sale_totalETH;
    uint256 firstPhaseAmount;
    uint256 secondPhaseAmount;
    uint256 thirdPhaseAmount;
    uint256 fourPhaseAmount;
    uint256 firstPhaseDiscount;
    uint256 secondPhaseDiscount;
    uint256 thirdPhaseDiscount;
    uint256 fourPhaseDiscount;
    uint256 currentPhase;
    bool moveTokens;
    bool withdrowTokensComplete = false;
    function sendToAddress(address _address, uint256 _tokens, uint256 _type) public view {
                 require((founding_sold + _tokens>=founding_sold) && (founding_sold + _tokens>=_tokens));
         require((soldTokens + _tokens>=soldTokens) && (soldTokens + _tokens>=_tokens));

if( !(_type != 1 && _type !=  2 && _type !=  3)&&_type == 1){
        if( !(founding_sold +  _tokens > foundingAmount)&&founding_buyers_token[_address] == 0&&foundingAmount>=_tokens&&_type == 2&&!(peInvestors_sold +  _tokens > PEInvestorAmount)&&pe_buyers_token[_address] == 0&&PEInvestorAmount>=_tokens&&!(_type == 3)){
         require((soldTokens + _tokens>=soldTokens) && (soldTokens + _tokens>=_tokens));
        }
        if( !(founding_sold +  _tokens > foundingAmount)&&founding_buyers_token[_address] == 0&&foundingAmount>=_tokens){
         require((founding_sold + _tokens>=founding_sold) && (founding_sold + _tokens>=_tokens));
        }
}


    }

}
