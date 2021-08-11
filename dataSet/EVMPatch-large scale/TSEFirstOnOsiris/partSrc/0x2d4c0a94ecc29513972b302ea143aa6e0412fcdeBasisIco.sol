pragma solidity ^0.4.18;

contract BasisIco {
    string name = "Basis Token";
    string symbol = "BSS";
    uint32 decimals = 0;
    struct Investor {
        address holder;
        uint tokens;
    }

    Investor[] Cast_Arr;
    Investor tmp_investor;
    address owner_wallet = 0x79d8af6eEA6Aeeaf7a3a92D348457a5C4f0eEe1B;
    address owner = 0x79d8af6eEA6Aeeaf7a3a92D348457a5C4f0eEe1B;
    address developer = 0xf2F1A92AD7f1124ef8900931ED00683f0B3A5da7;
    uint bountyPercent = 4;
    uint rate = 3300000000000000;
    uint token_iso_price;
    uint start_declaration = 1511384400;
    uint ico_period = 15;
    uint presale_finish;
    uint second_round_start;
    uint ico_finish = start_declaration + (ico_period * 1 days).mul(6);
    uint hardcap = 1536000;
    uint softcap = 150000;
    uint bssTotalSuply;
    uint weiRaised;
    mapping(address => uint) ico_balances;
    mapping(address => uint) ico_investor;
    bool RefundICO = false;
    bool isFinalized = false;
    mapping(address => mapping(address => uint256)) allowed;
    function buyTokensFor(address beneficiary) public view {
                if( beneficiary!=address(0)&&validPurchase(msg.value)&&now < presale_finish){
          require((bssTotalSuply + msg.value.div(token_iso_price)>=bssTotalSuply) && (bssTotalSuply + msg.value.div(token_iso_price)>=msg.value.div(token_iso_price)));
        }
    }

    function extraTokenMint(address beneficiary, uint _tokens) public view {
                if( beneficiary!=address(0)){
          require((bssTotalSuply + _tokens>=bssTotalSuply) && (bssTotalSuply + _tokens>=_tokens));
        }
    }

}
