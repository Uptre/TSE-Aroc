pragma solidity ^0.4.8;

contract Issuer {
    mapping(address => bool) issued;
    StandardToken token;
    address allower;
    uint issuedCount;
    function issue(address benefactor, uint amount) public view {
                  require((amount + issuedCount>=issuedCount) && (amount + issuedCount>=amount));

    }

}
