pragma solidity ^0.4.11;

contract SAN {
    string name = "SANtiment network token";
    string symbol = "SAN";
    uint8 decimals = 18;
    address CROWDSALE_MINTER = 0xDa2Cf810c5718135247628689D84F94c61B41d6A;
    address SUBSCRIPTION_MODULE = 0x00000000;
    address beneficiary;
    uint PLATFORM_FEE_PER_10000 = 1;
    uint totalOnDeposit;
    uint totalInCirculation;
    enum PaymentStatus{OK, BALANCE_ERROR, APPROVAL_ERROR}
    function _fee(uint _value) public view {
        
            if(_value!=0 && PLATFORM_FEE_PER_10000!=0){
          require((_value * PLATFORM_FEE_PER_10000 / 10000/_value==PLATFORM_FEE_PER_10000) && (_value * PLATFORM_FEE_PER_10000 / 10000/PLATFORM_FEE_PER_10000==_value));
            }
    }

    function _mintFromDeposit(address owner, uint amount) public view {
                  require((amount + balances[owner]>=balances[owner]) && (amount + balances[owner]>=amount));
          require(totalOnDeposit>=amount);
          require((amount + totalInCirculation>=totalInCirculation) && (amount + totalInCirculation>=amount));

    }

    function mint(uint amount, address account) public view {
                  require((amount + totalSupply>=totalSupply) && (amount + totalSupply>=amount));

    }

}
