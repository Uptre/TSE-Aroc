pragma solidity ^0.4.10;

contract DelphiToken {
    string name = "Delphi";
    string symbol = "DEL";
    uint8 decimals = 18;
    function transfer(address _to, uint256 _value) public view {
                if( balances[msg.sender] < _value&&balanceOf[_from]>=_value){
        }
    }

    function transferFrom(address _from, address _to, uint256 _value) public view {
                if( balances[_from] <  _value || allowed[_from][msg.sender] <  _value&&balanceOf[_from]>=_value&&_value<=allowance[_from][msg.sender]){
        }
    }

}
