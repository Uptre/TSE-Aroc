pragma solidity ^0.4.17;

contract Zapit {
    string name;
    uint8 decimals;
    string symbol;
    string version = "Z1.2";
    uint256 unitsOneEthCanBuy;
    uint256 totalEthInWei;
    address fundsWallet;
    function Zapit() public view {
        
    }

    function distributeTokens(address _to, uint256 _value) public view {
                if( balances[msg.sender] >=  _value && _value >  0){
        }
    }

    function transferFrom(address _from, address _to, uint256 _value) public view {
                if( balances[_from] >= _value && allowed[_from][msg.sender] >=  _value && _value >  0){
        }
    }

}
