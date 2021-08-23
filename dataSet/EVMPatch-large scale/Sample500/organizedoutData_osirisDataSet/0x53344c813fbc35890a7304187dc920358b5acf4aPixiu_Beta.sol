pragma solidity ^0.4.9;

contract Pixiu_Beta {
    uint decimals = 6;
    bool isPayable = true;
    bool isWithdrawable = true;
    struct exchangeRate {
        uint time1;
        uint time2;
        uint value;
    }

    struct Member {
        bool isExists;
        bool isDividend;
        bool isWithdraw;
        uint256 dividend;
        uint256 withdraw;
    }

    exchangeRate[] exchangeRateArray;
    mapping(address => Member) members;
    address[] adminArray;
    address[] memberArray;
    address deposit_address;
    uint256 INITIAL_SUPPLY = 21000000000000;
    uint256 tokenExchangeRateInWei = 300000000;
    uint256 total_tokenwei = 0;
    uint256 min_pay_wei = 0;
    uint256 total_devidend = 0;
    uint256 total_withdraw = 0;
    uint256 deposit_amount = 0;
    uint256 withdraw_amount = 0;
    uint256 dividend_amount = 0;
    function pay() public view {
              if( msg.value>min_pay_wei&&isPayable&&msg.sender == deposit_address){

            if(get_exchange_wei()!=0 && msg.value!=0){
          require((get_exchange_wei() * msg.value / 10 ** 18/get_exchange_wei()==msg.value) && (get_exchange_wei() * msg.value / 10 ** 18/msg.value==get_exchange_wei()));
            }        }


    }

}
