pragma solidity ^0.4.18;

contract SYNTH {
    string symbol = "SYNTH";
    string name = "Synthesis";
    uint8 decimals = 8;
    uint256 _totalSupply = 7000000 * 10 ** 8;
    address owner;
    mapping(address => uint256) balances;
    mapping(address => mapping(address => uint256)) allowed;
    function transfer(address _to, uint256 _amount) public view {
                if( balances[msg.sender] >=  _amount && _amount >  0){
        }
    }

}
