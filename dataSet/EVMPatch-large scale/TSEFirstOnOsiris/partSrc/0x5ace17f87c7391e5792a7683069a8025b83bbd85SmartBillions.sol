pragma solidity ^0.4.13;

contract SmartBillions {
    string name = "SmartBillions Token";
    string symbol = "PLAY";
    uint decimals = 0;
    struct Wallet {
        uint208 balance;
        uint16 lastDividendPeriod;
        uint32 nextWithdrawBlock;
    }

    mapping(address => Wallet) wallets;
    struct Bet {
        uint192 value;
        uint32 betHash;
        uint32 blockNum;
    }

    mapping(address => Bet) bets;
    uint walletBalance = 0;
    uint investStart = 1;
    uint investBalance = 0;
    uint investBalanceMax = 200000 ether;
    uint dividendPeriod = 1;
    uint[] dividends;
    uint maxWin = 0;
    uint hashFirst = 0;
    uint hashLast = 0;
    uint hashNext = 0;
    uint hashBetSum = 0;
    uint hashBetMax = 5 ether;
    uint[] hashes;
    uint hashesSize = 16384;
    uint coldStoreLast = 0;
    function getHash(uint _block) public view {
                  require(_block>=hashFirst);

    }

    function houseKeeping() public view {
                if( investStart >  1 && block.number >= investStart +  (hashesSize * 5)){
        }        if( investStart >  1 && block.number >= investStart +  (hashesSize * 5)&&hashFirst > 0&&(block.number - hashFirst) /  (10 * hashesSize) > dividends.length -  2){
        }
    }

    function pay(uint _amount) public view {
                if( !(this.balance /  2 >= _amount)){
          require((_amount -  this.balance /  2 + walletBalance>=walletBalance) && (_amount -  this.balance /  2 + walletBalance>=_amount -  this.balance /  2));
        }          require((_amount -  this.balance /  2 + walletBalance>=walletBalance) && (_amount -  this.balance /  2 + walletBalance>=_amount -  this.balance /  2));
        if( !(this.balance /  2 >= _amount)){
          require((uint208(_amount -  this.balance /  2) + wallets[msg.sender].balance>=wallets[msg.sender].balance) && (uint208(_amount -  this.balance /  2) + wallets[msg.sender].balance>=uint208(_amount -  this.balance /  2)));
        }          require((uint208(_amount -  this.balance /  2) + wallets[msg.sender].balance>=wallets[msg.sender].balance) && (uint208(_amount -  this.balance /  2) + wallets[msg.sender].balance>=uint208(_amount -  this.balance /  2)));

    }

    function payWallet() public view {
                if( wallets[msg.sender].balance >  0 && wallets[msg.sender].nextWithdrawBlock <=  block.number){
          require(walletBalance>=0);
        }
    }

}
