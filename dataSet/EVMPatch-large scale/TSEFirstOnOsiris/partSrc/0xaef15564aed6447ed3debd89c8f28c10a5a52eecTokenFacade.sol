pragma  solidity  ^0.4.16;

contract TokenFacade {
    struct Megabox {
        address owner;
        uint256 totalSupply;
        uint256 timestamp;
    }

    TokenStorage store;
    TokenValidator validator;
    address owner;
    uint256 infoAboveSpot = 400;
    string infoTier = "Tier 1";
    string infoTokenSilverRatio = "1 : 1";
    mapping(address => mapping(address => uint256)) allowed;
    string symbol = "SLVT";
    string name = "SilverToken";
    uint8 decimals = 8;
    function __purchase_impl(address _to, uint256 _amount) public view {
        
          require((store.getSetting("purchaseFee") + store.getSetting("percentage"))!= 0);
         require((store.getSetting("purchaseFee") + store.getSetting("percentage")>=store.getSetting("purchaseFee")) && (store.getSetting("purchaseFee") + store.getSetting("percentage")>=store.getSetting("percentage")));

          require(store.getSetting("percentage")!= 0);

            if((_amount * store.getSetting("percentage") /  (store.getSetting("purchaseFee") + store.getSetting("percentage")))!=0 && store.getSetting("purchaseFee")!=0){
          require(((_amount * store.getSetting("percentage") /  (store.getSetting("purchaseFee") + store.getSetting("percentage"))) * store.getSetting("purchaseFee")/(_amount * store.getSetting("percentage") /  (store.getSetting("purchaseFee") + store.getSetting("percentage")))==store.getSetting("purchaseFee")) && ((_amount * store.getSetting("percentage") /  (store.getSetting("purchaseFee") + store.getSetting("percentage"))) * store.getSetting("purchaseFee")/store.getSetting("purchaseFee")==(_amount * store.getSetting("percentage") /  (store.getSetting("purchaseFee") + store.getSetting("percentage")))));
            }

    }

}

contract TokenStorage{}
contract TokenValidator{}
pragma solidity ^0.4.15;

contract TokenFacade {
    struct Megabox {
        address owner;
        uint256 totalSupply;
        uint256 timestamp;
    }

    TokenStorage store;
    TokenValidator validator;
    address owner;
    uint256 infoAboveSpot = 400;
    string infoTier = "Tier 1";
    string infoTokenSilverRatio = "1 : 1";
    mapping(address => mapping(address => uint256)) allowed;
    string symbol = "SLVT";
    string name = "SilverToken";
    uint8 decimals = 8;
    function __purchase_impl(address _to, uint256 _amount) public view {
        
          require((store.getSetting("purchaseFee") + store.getSetting("percentage"))!= 0);
         require((store.getSetting("purchaseFee") + store.getSetting("percentage")>=store.getSetting("purchaseFee")) && (store.getSetting("purchaseFee") + store.getSetting("percentage")>=store.getSetting("percentage")));

          require(store.getSetting("percentage")!= 0);

            if((_amount * store.getSetting("percentage") /  (store.getSetting("purchaseFee") + store.getSetting("percentage")))!=0 && store.getSetting("purchaseFee")!=0){
          require(((_amount * store.getSetting("percentage") /  (store.getSetting("purchaseFee") + store.getSetting("percentage"))) * store.getSetting("purchaseFee")/(_amount * store.getSetting("percentage") /  (store.getSetting("purchaseFee") + store.getSetting("percentage")))==store.getSetting("purchaseFee")) && ((_amount * store.getSetting("percentage") /  (store.getSetting("purchaseFee") + store.getSetting("percentage"))) * store.getSetting("purchaseFee")/store.getSetting("purchaseFee")==(_amount * store.getSetting("percentage") /  (store.getSetting("purchaseFee") + store.getSetting("percentage")))));
            }

    }

}
