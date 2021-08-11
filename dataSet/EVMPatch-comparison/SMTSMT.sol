pragma solidity ^0.4.15;

contract SMT {
    string name = "SmartMesh Token";
    uint8 decimals = 18;
    string symbol = "SMT";
    string version = 'v0.1';
    uint256 allocateEndTime;
    mapping(address => uint256) nonces;
    function transferProxy(address _from, address _to, uint256 _value, uint256 _feeSmt, uint8 _v, bytes32 _r, bytes32 _s) public view {
                 require((_feeSmt + _value>=_feeSmt) && (_feeSmt + _value>=_value));


    }

}