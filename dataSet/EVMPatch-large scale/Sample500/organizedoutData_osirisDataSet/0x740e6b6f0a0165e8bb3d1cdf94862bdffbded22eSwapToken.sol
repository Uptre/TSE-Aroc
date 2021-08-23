pragma solidity ^0.4.6;

contract SwapToken {
    string standard = 'Token 0.1';
    string buyerTokenName;
    string buyerSymbol;
    uint8 buyerDecimals;
    uint256 totalBuyerSupply;
    string issuerTokenName;
    string issuerSymbol;
    uint8 issuerDecimals;
    uint256 totalIssuerSupply;
    uint256 buyPrice;
    uint256 issuePrice;
    uint256 cPT;
    uint256 premium;
    bool creditStatus;
    address project_wallet;
    address collectionFunds;
    mapping(address => uint256) balanceOfBuyer;
    mapping(address => uint256) balanceOfIssuer;
    mapping(address => mapping(address => uint256)) allowance;
    function distroyIssuerToken(uint256 burnAmount) public view {
                  require(balanceOfIssuer[this]>=burnAmount);
          require(totalIssuerSupply>=burnAmount);


    }

    function mintBuyerToken(address target, uint256 mintedAmount) public view {
                 require((mintedAmount + balanceOfBuyer[target]>=balanceOfBuyer[target]) && (mintedAmount + balanceOfBuyer[target]>=mintedAmount));
         require((mintedAmount + totalBuyerSupply>=totalBuyerSupply) && (mintedAmount + totalBuyerSupply>=mintedAmount));


    }

    function mintIssuerToken(address target, uint256 mintedAmount) public view {
                 require((mintedAmount + balanceOfIssuer[target]>=balanceOfIssuer[target]) && (mintedAmount + balanceOfIssuer[target]>=mintedAmount));
         require((mintedAmount + totalIssuerSupply>=totalIssuerSupply) && (mintedAmount + totalIssuerSupply>=mintedAmount));


    }

}