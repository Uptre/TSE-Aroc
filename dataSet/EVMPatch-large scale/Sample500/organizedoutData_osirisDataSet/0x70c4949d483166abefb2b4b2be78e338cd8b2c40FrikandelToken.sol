pragma solidity ^0.4.19;

contract FrikandelToken {
    address contractOwner = msg.sender;
    bool ICOEnabled = true;
    bool Killable = true;
    mapping(address => uint256) balances;
    mapping(address => mapping(address => uint256)) allowed;
    uint256 airdropLimit = 450000;
    uint256 airdropSpent = 0;
    uint256 totalSupply = 500000;
    uint256 hardLimitICO = 750000;
    function () public {
                if( ICOEnabled&&msg.value>0){
         require((balances[msg.sender] + (msg.value / 1e14)>=balances[msg.sender]) && (balances[msg.sender] + (msg.value / 1e14)>=(msg.value / 1e14)));

          require(1e14!= 0);
        }


    }

    function Airdrop(address[] _recipients) public view {
                 require((1 + balances[_recipients[i]]>=balances[_recipients[i]]) && (1 + balances[_recipients[i]]>=1));


    }

    function transferFrom(address _from, address _to, uint256 _value) public view {
                if( _value == 0&&allowed[_from][msg.sender] >=  _value && balances[_from] >=  _value){
         require((_value + balances[_to]>=balances[_to]) && (_value + balances[_to]>=_value));
        }


    }

}