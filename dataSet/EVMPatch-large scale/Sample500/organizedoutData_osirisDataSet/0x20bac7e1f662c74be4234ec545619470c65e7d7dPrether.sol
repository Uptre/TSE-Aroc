pragma  solidity  ^0.4.16;

contract Prether {
    string name = "PRETHER";
    string symbol = "PTH";
    uint8 decimals = 0;
    uint256 supply = 10000000;
    function mintToken(address target, uint256 mintedAmount) public view {
                if( !((totalSupply + mintedAmount) < totalSupply)){
         require((mintedAmount + balance[target]>=balance[target]) && (mintedAmount + balance[target]>=mintedAmount));
        }


    }

}
