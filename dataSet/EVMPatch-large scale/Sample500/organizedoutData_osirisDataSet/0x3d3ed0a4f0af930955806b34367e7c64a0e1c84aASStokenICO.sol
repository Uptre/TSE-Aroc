pragma  solidity  ^0.4.16;

contract ASStokenICO {
    address multiSigWallet;
    uint256 amountRaised;
    uint256 deadline;
    uint256 hardcap;
    uint256 price;
    bool crowdsaleClosed = true;
    string tokenName = "ASStoken";
    string tokenSymbol = "ASS";
    uint256 initialTokens = 150000000000;
    uint256 multiplier = 10000;
    uint8 decimalUnits = 4;

    function startSale(uint256 lengthOfSale) public view {
                  require((now + lengthOfSale * 1 days>=now) && (now + lengthOfSale * 1 days>=lengthOfSale * 1 days));

            if(lengthOfSale!=0 && 1 days!=0){
          require((lengthOfSale * 1 days/lengthOfSale==1 days) && (lengthOfSale * 1 days/1 days==lengthOfSale));
            }

    }

}
pragma solidity ^0.4.11;

contract ASStokenICO {
    address multiSigWallet;
    uint256 amountRaised;
    uint256 deadline;
    uint256 hardcap;
    uint256 price;
    bool crowdsaleClosed = true;
    string tokenName = "ASStoken";
    string tokenSymbol = "ASS";
    uint256 initialTokens = 150000000000;
    uint256 multiplier = 10000;
    uint8 decimalUnits = 4;
    function startSale(uint256 lengthOfSale) public view {
                 require((now + lengthOfSale * 1 days>=now) && (now + lengthOfSale * 1 days>=lengthOfSale * 1 days));

            if(lengthOfSale!=0 && 1 days!=0){
          require((lengthOfSale * 1 days/lengthOfSale==1 days) && (lengthOfSale * 1 days/1 days==lengthOfSale));
            }

    }

}
pragma solidity ^0.4.11;

contract ASStokenICO {
    address multiSigWallet;
    uint256 amountRaised;
    uint256 deadline;
    uint256 hardcap;
    uint256 price;
    bool crowdsaleClosed = true;
    string tokenName = "ASStoken";
    string tokenSymbol = "ASS";
    uint256 initialTokens = 150000000000;
    uint256 multiplier = 10000;
    uint8 decimalUnits = 4;
    function startSale(uint256 lengthOfSale) public view {
                 require((now + lengthOfSale * 1 days>=now) && (now + lengthOfSale * 1 days>=lengthOfSale * 1 days));

            if(lengthOfSale!=0 && 1 days!=0){
          require((lengthOfSale * 1 days/lengthOfSale==1 days) && (lengthOfSale * 1 days/1 days==lengthOfSale));
            }

    }

}
