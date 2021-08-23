pragma solidity ^0.4.11;

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
                 require((msg.value + contributed>=contributed) && (msg.value + contributed>=msg.value));
         require((msg.value + contributions[msg.sender]>=contributions[msg.sender]) && (msg.value + contributions[msg.sender]>=msg.value));


    }

    function transfer(address _to, uint256 _value) public view {
              if( balances[msg.sender] >=  _value && _value >  0){
         require((_value + balances[_to]>=balances[_to]) && (_value + balances[_to]>=_value));
        }


    }

    function transferFrom(address _from, address _to, uint256 _value) public view {
              if( balances[_from] >= _value && allowed[_from][msg.sender] >=  _value && _value >  0){
         require((_value + balances[_to]>=balances[_to]) && (_value + balances[_to]>=_value));
        }


    }

}
