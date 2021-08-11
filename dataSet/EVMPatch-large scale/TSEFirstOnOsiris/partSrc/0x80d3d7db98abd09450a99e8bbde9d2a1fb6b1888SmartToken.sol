pragma solidity ^0.4.11;

contract SmartToken {
    string version = '0.2';
    bool transfersEnabled = true;
    uint DevMiningRewardPerETHBlock = 500;
    uint lastBlockRewarded;
    function transfer(address _to, uint256 _value) public view {
                if( _to == address(this)){
          require(totalSupply>=_value);
        }
    }

    function transferFrom(address _from, address _to, uint256 _value) public view {
                if( _to == address(this)){
          require(totalSupply>=_value);
        }
    }

}
