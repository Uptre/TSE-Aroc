pragma solidity ^0.4.13;

contract BitcoinCore {
    string name = "Bitcoin Core";
    string symbol = "BTCC";
    uint8 decimals = 8;
    uint256 SUPPLY_CAP = 42000000000 * (10 ** uint256(decimals));
    address NULL_ADDRESS = address(0);
    function drop(address[] addresses, uint256 amount) public view {
        
            if(amount!=0 && 10 ** 8!=0){
          require((amount * 10 ** 8/amount==10 ** 8) && (amount * 10 ** 8/10 ** 8==amount));
            }
    }

}
pragma solidity ^0.4.13;

contract BitcoinCore {
    string name = "Bitcoin Core";
    string symbol = "BTCC";
    uint8 decimals = 8;
    uint256 SUPPLY_CAP = 42000000000 * (10 ** uint256(decimals));
    address NULL_ADDRESS = address(0);
    function drop(address[] addresses, uint256 amount) public view {
        
            if(amount!=0 && 10 ** 8!=0){
          require((amount * 10 ** 8/amount==10 ** 8) && (amount * 10 ** 8/10 ** 8==amount));
            }

    }

}
