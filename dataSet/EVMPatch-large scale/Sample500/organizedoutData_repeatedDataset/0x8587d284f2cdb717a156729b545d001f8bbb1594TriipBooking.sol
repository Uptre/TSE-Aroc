pragma solidity ^0.4.18;

contract TriipBooking {
    uint _totalSupply = 50 * 10 ** 24;
    string name = "TriipBooking";
    string symbol = "TRP";
    uint8 decimals = 18;
    mapping(address => uint256) balances;
    mapping(address => mapping(address => uint256)) allowed;
    uint256 developmentTokens = 15 * 10 ** 24;
    uint256 bountyTokens = 2.5 * 10 ** 24;
    address developmentTokensWallet = 0x2De3a11A5C1397CeFeA81D844C3173629e19a630;
    address bountyTokensWallet = 0x7E2435A1780a7E4949C059045754a98894215665;
    uint startTime = 1516406400;
    uint endTime = 1520899140;
    uint256 icoTokens = 32.5 * 10 ** 24;
    uint256 totalCrowdsale;
    address owner;
    function transfer(address _to, uint256 _value) public view {
              if( balances[msg.sender] >=  _value&&_value >  0){
         require((_value + balances[_to]>=balances[_to]) && (_value + balances[_to]>=_value));
        }


    }

    function transferFrom(address _from, address _to, uint256 _value) public view {
              if( allowed[_from][msg.sender] >= _value && balances[_from] >=  _value&&_value >  0){
         require((_value + balances[_to]>=balances[_to]) && (_value + balances[_to]>=_value));
        }


    }

}
