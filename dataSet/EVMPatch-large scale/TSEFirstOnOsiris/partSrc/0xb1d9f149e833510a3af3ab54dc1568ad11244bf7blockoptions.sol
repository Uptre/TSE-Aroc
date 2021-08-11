pragma solidity ^ 0.4 .8;

contract blockoptions {
    string name = "blockoptions";
    string symbol = "BOP";
    uint8 decimals = 8;
    uint _totalSupply = 20000000 * 10 ** decimals;
    uint pre_ico_start;
    uint pre_ico_end;
    uint ico_start;
    uint ico_end;
    mapping(uint => address) investor;
    mapping(uint => uint) weireceived;
    mapping(uint => uint) optsSent;
    uint counter = 0;
    uint profit_sent = 0;
    bool stopped = false;
    mapping(address => uint) balances;
    mapping(address => mapping(address => uint)) allowed;
    address owner;
}
