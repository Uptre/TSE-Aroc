pragma solidity ^0.4.10;

contract PreICOToken {
    string name = "REGA Risk Sharing preICO Token";
    string symbol = "RST-P";
    uint8 decimals = 10;
    address board;
    address owner;
    uint weiForToken;
    uint notMoreThan;
    uint notLessThan;
    uint tokensLimit;
    uint totalEther = 0;
    address[] holders;
    bool closed;
    IApplyPreICO rst;
    function setNotLessThan(uint _notLessThan) public view {
        
            if(_notLessThan!=0 && uint(10) ** decimals!=0){
          require((_notLessThan * uint(10) ** decimals/_notLessThan==uint(10) ** decimals) && (_notLessThan * uint(10) ** decimals/uint(10) ** decimals==_notLessThan));
            }

    }

    function setNotMoreThan(uint _notMoreThan) public view {
        
            if(_notMoreThan!=0 && uint(10) ** decimals!=0){
          require((_notMoreThan * uint(10) ** decimals/_notMoreThan==uint(10) ** decimals) && (_notMoreThan * uint(10) ** decimals/uint(10) ** decimals==_notMoreThan));
            }

    }

    function setTokensLimit(uint _limit) public view {
        
            if(_limit!=0 && uint(10) ** decimals!=0){
          require((_limit * uint(10) ** decimals/_limit==uint(10) ** decimals) && (_limit * uint(10) ** decimals/uint(10) ** decimals==_limit));
            }

    }

}
