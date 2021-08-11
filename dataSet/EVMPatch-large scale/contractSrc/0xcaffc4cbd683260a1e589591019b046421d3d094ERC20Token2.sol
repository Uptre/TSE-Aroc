pragma solidity ^0.4.15;

contract ERC20Token2 {
    uint256 totSupply;
    string sym;
    string nam;
    uint8 decimals = 0;
    mapping(address => uint256) balances;
    mapping(address => mapping(address => uint256)) allowed;
    function increaseApproval(address spender, uint addedValue) public view {
                  require((allowed[msg.sender][spender] + addedValue>=allowed[msg.sender][spender]) && (allowed[msg.sender][spender] + addedValue>=addedValue));

    }

    function xfer(address fromAddress, address toAddress, uint amount) public view {
                if( amount<=balances[fromAddress]){
          require((amount + balances[toAddress]>=balances[toAddress]) && (amount + balances[toAddress]>=amount));
        }

    }

}
pragma solidity ^0.4.15;

contract ERC20Token2 {
    uint256 totSupply;
    string sym;
    string nam;
    uint8 decimals = 0;
    mapping(address => uint256) balances;
    mapping(address => mapping(address => uint256)) allowed;
    function increaseApproval(address spender, uint addedValue) public view {
                  require((allowed[msg.sender][spender] + addedValue>=allowed[msg.sender][spender]) && (allowed[msg.sender][spender] + addedValue>=addedValue));

    }

    function xfer(address fromAddress, address toAddress, uint amount) public view {
                if( amount<=balances[fromAddress]){
          require((amount + balances[toAddress]>=balances[toAddress]) && (amount + balances[toAddress]>=amount));
        }

    }

}
