pragma solidity ^0.4.16;

contract Crowdsale {
    address multisig;
    FolkCoin token = new FolkCoin();
    uint start;
    uint period;
    uint rate;
 

    function setRate(uint newRate) public view {
        
            if(newRate!=0 && (10 ** 18)!=0){
          require((newRate * (10 ** 18)/newRate==(10 ** 18)) && (newRate * (10 ** 18)/(10 ** 18)==newRate));
            }
    }

}

contract FolkCoin{}pragma solidity ^0.4.16;

contract Crowdsale {
    address multisig;
    FolkCoin token = new FolkCoin();
    uint start;
    uint period;
    uint rate;
    function setRate(uint newRate) public view {
        
            if(newRate!=0 && (10 ** 18)!=0){
          require((newRate * (10 ** 18)/newRate==(10 ** 18)) && (newRate * (10 ** 18)/(10 ** 18)==newRate));
            }

    }

}
