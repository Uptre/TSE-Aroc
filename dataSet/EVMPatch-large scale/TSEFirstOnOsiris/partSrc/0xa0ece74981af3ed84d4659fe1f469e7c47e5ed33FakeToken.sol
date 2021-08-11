pragma solidity ^0.4.10;

contract FakeToken {
    string name = "Fake Token";
    string symbol = "FTK";
    uint256 decimals = 18;
    string version = "1.0";
    address ethFundDeposit;
    bool isFinalized;
    uint256 fundingStartBlock;
    uint256 fundingEndBlock;
    uint256 tokenExchangeRate = 1000;
    function transfer(address _to, uint256 _value) public view {
                if( balances[msg.sender] >=  _value && _value >  0){
        }
    }

    function transferFrom(address _from, address _to, uint256 _value) public view {
                if( balances[_from] >= _value && allowed[_from][msg.sender] >=  _value && _value >  0){
          require((_value + balances[_to]>=balances[_to]) && (_value + balances[_to]>=_value));
        }
    }

}
