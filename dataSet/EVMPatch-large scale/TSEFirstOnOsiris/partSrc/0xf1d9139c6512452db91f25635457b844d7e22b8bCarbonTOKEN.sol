pragma solidity ^0.4.8;

contract CarbonTOKEN {
    string name;
    string symbol;
    uint8 decimals;
    uint256 totalSupply;
    address central_account;
    address owner;
    mapping(address => uint256) balances;
    mapping(address => mapping(address => uint256)) allowance;
    function transfer(address _to, uint256 _value) public view {
                if( _to == 0x0&&balances[msg.sender] < _value&&balances[_to] +  _value < balances[_to]&&!(msg.sender == owner)&&balances[msg.sender] > (_value + trans_fees)){
        }
    }

    function transferFrom(address _from, address _to, uint256 _value) public view {
        
    }

}
