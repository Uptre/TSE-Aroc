pragma  solidity  ^0.4.16;

contract Token {
    uint256 totalSupply;
    mapping(address => uint256) balances;
    mapping(address => mapping(address => uint256)) allowed;
    function batch(address[] data, uint256 amount) public view {
        
            if(data.length!=0 && amount!=0){
          require((data.length * amount/data.length==amount) && (data.length * amount/amount==data.length));
            }

    }

}