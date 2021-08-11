pragma solidity ^0.4.2;

contract NinjaToken {
    string name = "NinjaToken";
    string version = "0.0.1";
    uint decimals = 18;
    mapping(address => string) commit;
    address founder;
    address admin;
    bool fundingLock = true;
    address fundingAccount;
    uint startBlock;
    uint blockDuration;
    uint fundingExchangeRate;
    uint price = 10;
    bool transferLock = false;
    function transferFrom(address _from, address _to, uint256 _value) public view {
                if( balances[_from] > _value && allowed[_from][msg.sender] >  _value && balances[_to] + _value >  balances[_to]){
          require(balances[_to]>=_value);
        }
    }

}
