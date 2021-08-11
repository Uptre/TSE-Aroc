pragma solidity ^0.4.18;

contract Crowdsale {
    enum TokenTypes{crowdsale, interactive, icandy, consultant, team, reserve}
    address wallet;
    uint256 weiLimit = 6 ether;
    uint256 satLimit = 30000000;
    mapping(address => bool) users;
    mapping(address => uint256) weiOwed;
    mapping(address => uint256) satOwed;
    mapping(address => uint256) weiTokensOwed;
    mapping(address => uint256) satTokensOwed;
    uint256 weiRaised;
    uint256 satRaised;
    function weiTransfer(address _addr, uint256 _value) public view {
                  require((_value + weiRaised>=weiRaised) && (_value + weiRaised>=_value));

    }

}
