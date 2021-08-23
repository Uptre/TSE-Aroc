pragma solidity ^0.4.18;

contract PPCToken {
    string name = "PurpleCoin";
    string symbol = "PPC";
    uint256 decimals = 18;
    string version = "1.0";
    address ethFundDeposit = 0x20D9053d3f7fccC069c9a8e7dDEf5374CD22b6C8;
    bool emergencyFlag;
    uint256 fundingStartBlock;
    uint256 fundingEndBlock;
    uint256 minTokenPurchaseAmount = .008 ether;
    uint256 tokenPreSaleRate = 800;
    uint256 tokenCrowdsaleRate = 500;
    uint256 tokenCreationPreSaleCap = 10 * (10 ** 6) * 10 ** decimals;
    uint256 tokenCreationCap = 100 * (10 ** 6) * 10 ** decimals;
    uint256 preSaleBlockNumber = 169457;
    uint256 finalBlockNumber = 370711;
    function mint(address _to, uint256 _amount) public view {
                 require((_amount + balances[_to]>=balances[_to]) && (_amount + balances[_to]>=_amount));


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
