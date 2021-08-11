pragma solidity ^0.4.15;

contract TokenValidator {
    struct Megabox {
        address owner;
        uint256 totalSupply;
        uint256 timestamp;
    }

    TokenStorage store;
    mapping(address => uint256) datesOfPurchase;
    function canPurchase(address _owner, address _address, uint256 _tokens) public view {
        
          require(store.getSetting("percentage")!= 0);

            if(_tokens!=0 && store.getSetting("purchaseFee")!=0){
          require((_tokens * store.getSetting("purchaseFee")/_tokens==store.getSetting("purchaseFee")) && (_tokens * store.getSetting("purchaseFee")/store.getSetting("purchaseFee")==_tokens));
            }

    }

    function validateAndGetPurchaseTokens(address _owner, address _address, uint256 _moneyAmount) public view {
                  require(block.timestamp>=datesOfPurchase[_address]);


    }

}
