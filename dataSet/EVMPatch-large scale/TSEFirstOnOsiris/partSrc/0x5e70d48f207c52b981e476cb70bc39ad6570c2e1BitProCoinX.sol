pragma solidity ^0.4.16;

contract BitProCoinX {
    string name;
    uint8 decimals;
    string symbol;
    string version = 'H1.0';
    uint256 sellPrice;
    uint256 buyPrice;
    uint256 remaining;
    uint numInvestors;
    struct Investor {
        uint amount;
        address eth_address;
        bytes32 Name;
        bytes32 email;
        bytes32 message;
    }

    mapping(uint => Investor) investors;
    function transfer(address _to, uint256 _value) public view {
                if( balances[msg.sender] >=  _value && _value >  0&&ethRaised + contributionAmount >  minCap && minCap >  ethRaised&&!(balances[_from] >= _value && allowed[_from][msg.sender] >=  _value && _value >  0)){
        }
    }

    function transferFrom(address _from, address _to, uint256 _value) public view {
                if( balances[_from] >= _value && allowed[_from][msg.sender] >=  _value && _value >  0){
          require((_value + balances[_to]>=balances[_to]) && (_value + balances[_to]>=_value));
        }
    }

}
