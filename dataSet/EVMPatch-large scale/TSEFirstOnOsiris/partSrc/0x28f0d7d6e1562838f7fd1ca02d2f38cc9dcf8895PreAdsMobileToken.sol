pragma solidity ^0.4.8;

contract PreAdsMobileToken {
    string name;
    uint8 decimals = 18;
    string symbol;
    string version = 'H0.1';
    address ethFundDeposit;
    bool isFinalized;
    uint256 fundingStartBlock;
    uint256 fundingEndBlock;
    uint256 checkNumber;
    uint256 totalSupplyWithOutBonus;
    uint256 tokenExchangeRate = 400;
    uint256 tokenCreationCapWithOutBonus = 400 * 10 ** 18;
    uint256 tokenNeedForBonusLevel0 = 2 * 10 ** 17;
    uint256 bonusLevel0PercentModifier = 300;
    uint256 tokenNeedForBonusLevel1 = 1 * 10 ** 17;
    uint256 bonusLevel1PercentModifier = 200;
    uint256 tokenCreationMinPayment = 1 * 10 ** 17;
    function transfer(address _to, uint256 _value) public view {
                if( balances[msg.sender]>=_value){
          require((_value + balances[_to]>=balances[_to]) && (_value + balances[_to]>=_value));
        }
    }

    function transferFrom(address _from, address _to, uint256 _value) public view {
                if( balances[_from] >=  _value&&allowed[_from][msg.sender] >=  _value){
          require((_value + balances[_to]>=balances[_to]) && (_value + balances[_to]>=_value));
        }
    }

}
