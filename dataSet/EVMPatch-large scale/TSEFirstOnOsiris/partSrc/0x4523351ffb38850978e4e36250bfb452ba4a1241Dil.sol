pragma  solidity  ^0.4.16;

contract Dil {
    string name = "\u0926\u093f\u0932";
    string symbol = "\u2764\ufe0f";
    uint256 decimals = 0;
    string version = "1.0";
    address depositAddress;
    bool isFinalized;
    uint256 targetEth;
    uint256 fundingStartBlock;
    uint256 fundingEndBlock;
    mapping(address => uint256) contributions;
    uint256 contributed;
    function contribute() public view {
        if( !(block.number < fundingStartBlock)&&!(block.number > fundingEndBlock)&&!(msg.value == 0) ){
         require((msg.value + contributed>=contributed) && (msg.value + contributed>=msg.value));
         require((msg.value + contributions[msg.sender]>=contributions[msg.sender]) && (msg.value + contributions[msg.sender]>=msg.value));
}


    }

}
