pragma solidity ^0.5.0;
/*pragma solidity ^0.4.19;*/ //部署Token 用另一个地址调用deposit存10ether;部署mallary(构参为token地址),换回源地址，deposite 4ther， setup然后getBalance会发现余额大于4

contract Token {

    // This contract keeps track of two balances for it's users. A user can
    // send ether to this contract and exchange ether for tokens and vice
    // versa, given a varying exchange rate (currentRate).
    mapping (address => uint) tokenBalance;
    mapping (address => uint) etherBalance;
    uint currentRate;

    constructor() public {
    // for solidity 0.4.19
    /*function Token() public {*/
        currentRate = 2;
    }
    

    // This contract supports various utility functions for transferring,
    // exchanging Ether and Tokens.
    // Note that this probably makes it rather hard for symbolic execution
    // tools to execute all combinations of possible re-entry points.
    function getTokenCountFor(address x) public view returns(uint) {
        return tokenBalance[x];
    }
    function getEtherCountFor(address x) public view returns(uint) {
        return etherBalance[x];
    }
    
    function getTokenCount() public view returns(uint) {
        return tokenBalance[msg.sender];
    }

    function depositEther() public payable {
        if (msg.value > 0) { etherBalance[msg.sender] += msg.value; }
    }

    function exchangeTokens(uint amount) public {
        if (tokenBalance[msg.sender] >= amount) {
            uint etherAmount = amount * currentRate;
            etherBalance[msg.sender] += etherAmount;
            tokenBalance[msg.sender] -= amount;
        }
    }

    function exchangeEther(uint amount) public payable {
        etherBalance[msg.sender] += msg.value;
        if (etherBalance[msg.sender] >= amount) {
            uint tokenAmount = amount / currentRate;
            etherBalance[msg.sender] -= amount;
            tokenBalance[msg.sender] += tokenAmount;
        }
    }
    event enterTransferToken(address, uint);
    function transferToken(address to, uint amount) public {
        if (tokenBalance[msg.sender] >= amount) {
            emit enterTransferToken(to, amount);
            tokenBalance[to] += amount;
            tokenBalance[msg.sender] -= amount;
        }
    }
    
    // This is the function that will be abused by the attacker during the
    // re-entrancy attack
    function exchangeAndWithdrawToken(uint amount) public {
        if (tokenBalance[msg.sender] >= amount) {
            uint etherAmount = tokenBalance[msg.sender] * currentRate;
            tokenBalance[msg.sender] -= amount;
            // safe because it uses the gas-limited transfer function, which
            // does not allow further calls.
            msg.sender.transfer(etherAmount);
        }
    }

    // Function vulnerable to re-entrancy attack
    function withdrawAll() public {
        uint etherAmount = etherBalance[msg.sender];
        uint tokenAmount = tokenBalance[msg.sender];
        if (etherAmount > 0 && tokenAmount > 0) {
            uint e = etherAmount + (tokenAmount * currentRate);

            // This state update acts as a re-entrancy guard into this function.
            etherBalance[msg.sender] = 0;

            // external call. The attacker cannot re-enter withdrawAll, since
            // etherBalance[msg.sender] is already 0.
            msg.sender.call.value(e)("");

            // problematic state update, after the external call.
            tokenBalance[msg.sender] = 0;
        }
    }
    
    event balanceLog(string, uint);
     function getBalance() public returns(uint) {
         emit balanceLog("victim contract balance: ", address(this).balance);
        return address(this).balance;
    }

}

