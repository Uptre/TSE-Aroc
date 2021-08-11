pragma solidity ^0.4.17;

contract ZMINE {
    string name = "ZMINE Token";
    string symbol = "ZMN";
    uint8 decimals = 18;
    uint256 totalSupply = 1000000000000000000000000000;
    function burn(uint _amount) public view {
              if( balances[owner]>=_amount){
          require(totalSupply>=_amount);
        }


    }

}
