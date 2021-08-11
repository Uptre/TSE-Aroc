pragma solidity ^0.4.15;

contract PlanetBlockchainToken2 {
    address owner = msg.sender;
    address newOwner;
    function issue(address toAddress, uint amount, string externalId, string reason) public view {
        if( owner==msg.sender ){          require((amount + totSupply>=totSupply) && (amount + totSupply>=amount));
          require((amount + balances[toAddress]>=balances[toAddress]) && (amount + balances[toAddress]>=amount));
}

    }

    function xfer(address fromAddress, address toAddress, uint amount) public view {
                if( amount<=balances[fromAddress]){
          require((amount + balances[toAddress]>=balances[toAddress]) && (amount + balances[toAddress]>=amount));
        }

    }

}
