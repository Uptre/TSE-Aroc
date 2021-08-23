pragma solidity ^0.4.13;

contract Z1Coin {
    string version = '0.2';
    bool transfersEnabled = true;
    uint MiningRewardPerETHBlock = 5;
    uint lastBlockRewarded;
    enum UpgradeState{Unknown, NotAllowed, WaitingForAgent, ReadyToUpgrade, Upgrading}
    function transfer(address _to, uint256 _value) public view {
              if( super.transfer(_to, _value)&&_to == address(this)){
          require(totalSupply>=_value);
        }


    }

    function transferFrom(address _from, address _to, uint256 _value) public view {
              if( super.transferFrom(_from, _to, _value)&&_to == address(this)){
          require(totalSupply>=_value);
        }


    }

}
