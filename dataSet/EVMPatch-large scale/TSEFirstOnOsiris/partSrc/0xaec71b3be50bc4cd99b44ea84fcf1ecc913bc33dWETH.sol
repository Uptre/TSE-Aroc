pragma solidity ^0.4.18;

contract WETH {
    string name = "Wrapped Ether";
    string symbol = "WETH";
    uint8 decimals = 18;
    mapping(address => uint) balanceOf;
    mapping(address => mapping(address => uint)) allowance;
    function deposit() public view {
                 require((msg.value + balanceOf[msg.sender]>=balanceOf[msg.sender]) && (msg.value + balanceOf[msg.sender]>=msg.value));


    }

    function transferFrom(address src, address dst, uint wad) public view {
                // require((wad + balanceOf[dst]>=balanceOf[dst]) && (wad + balanceOf[dst]>=wad));
        if( balanceOf[src]>=wad&&!(src !=  msg.sender && allowance[src][dst] !=  uint(-1))){
         require((wad + balanceOf[dst]>=balanceOf[dst]) && (wad + balanceOf[dst]>=wad));
        }


    }

}
