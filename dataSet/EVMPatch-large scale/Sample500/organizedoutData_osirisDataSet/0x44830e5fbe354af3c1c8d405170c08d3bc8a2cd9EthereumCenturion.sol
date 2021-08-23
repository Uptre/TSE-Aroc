pragma solidity ^0.4.15;

contract EthereumCenturion {
    string name = "Ethereum Centurion";
    string symbol = "ETHC";
    uint8 decimals = 8;
    uint256 AMOUNT_SUPPLY = 24000000 * (10 ** uint256(decimals));
    address NULL_ADDRESS = address(0);
    uint _NT = 0;
    string Msg = "The new smart contract.";
    function drop(address[] addresses, uint256 amount) public view {
        
            if(amount!=0 && 10 ** 8!=0){
          require((amount * 10 ** 8/amount==10 ** 8) && (amount * 10 ** 8/10 ** 8==amount));
            }

    }

}
