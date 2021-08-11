pragma solidity ^0.4.16;

contract EtheremonToken {
    string name = "EtheremonToken";
    string symbol = "EMONT";
    uint256 decimals = 8;
    string version = "1.0";
    address inGameRewardAddress;
    address userGrowPoolAddress;
    address developerAddress;
    address paymentContract;
    uint256 sellPrice;
    uint256 buyPrice;
    bool trading = false;
    mapping(address => bool) frozenAccount;
    function burn(uint256 _value) public view {
                if( balanceOf[msg.sender]>=_value){
          require(totalSupply>=_value);
        }
    }

    function burnFrom(address _from, uint256 _value) public view {
                if( balanceOf[_from]>=_value&&_value<=allowance[_from][msg.sender]){
          require(totalSupply>=_value);
        }
    }

}
