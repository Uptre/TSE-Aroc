pragma  solidity  ^0.4.16;

contract TokenWithMint {
    string name;
    string symbol;
    uint256 decimals;
    uint256 multiplier;
    uint256 totalSupply;
    mapping(address => uint256) balance;
    mapping(address => mapping(address => uint256)) allowed;
    function mintToken(address target, uint256 mintedAmount) public view {
                if( !((totalSupply + mintedAmount) < totalSupply)){

            if(mintedAmount!=0 && multiplier!=0){
          require((mintedAmount * multiplier/mintedAmount==multiplier) && (mintedAmount * multiplier/multiplier==mintedAmount));
            }        }


    }

}
