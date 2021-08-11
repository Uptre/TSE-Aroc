pragma solidity ^0.4.9;

contract Pixiu {
    uint decimals = 6;
    bool isPayable = true;
    bool isWithdrawable = true;
    bool isRequireData = false;
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
    uint256 tokenExchangeRateInWei = 300 * 10 ** 6;
    mapping(address => uint) shopStoreId;
    mapping(uint => address) shopStoreAddress;
    uint256 shopStorePrice = 1 * 10 ** 6;
    uint256 shopStoreNextId = 0;
    address shopStoreRegister;
    uint256 total_tokenwei = 0;
    uint256 min_pay_wei = 0;
    uint256 total_devidend = 0;
    uint256 total_withdraw = 0;
    uint256 deposit_amount = 0;
    uint256 withdraw_amount = 0;
    uint256 dividend_amount = 0;
    function pay() public view {
        
    }

}
