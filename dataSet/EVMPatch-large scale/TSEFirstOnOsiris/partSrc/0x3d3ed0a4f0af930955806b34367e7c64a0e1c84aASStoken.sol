pragma  solidity  ^0.4.16;

contract ASStoken {
    string name;
    string symbol;
    uint256 decimals;
    uint256 initialSupply;
    uint256 totalSupply;
    uint256 multiplier;
    mapping(address => uint256) balance;
    mapping(address => mapping(address => uint256)) allowed;
    function mintToken(address target, uint256 mintedAmount) public view {
        if( mintedAmount>0 ){
          require((mintedAmount + balance[target]>=balance[target]) && (mintedAmount + balance[target]>=mintedAmount));
          require((mintedAmount + totalSupply>=totalSupply) && (mintedAmount + totalSupply>=mintedAmount));
}


    }

}
