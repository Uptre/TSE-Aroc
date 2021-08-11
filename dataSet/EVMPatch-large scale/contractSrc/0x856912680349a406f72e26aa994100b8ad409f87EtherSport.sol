pragma solidity ^0.4.15;

contract EtherSport {
    string name = "Ether Sport";
    string symbol = "ESC";
    uint8 decimals = 18;
    uint256 tokenUnit = 10 ** uint256(decimals);
    address owner;
    address ethFundAddress;
    address escFundAddress;
    mapping(address => uint256) purchases;
    mapping(uint => address) allocationsIndex;
    mapping(address => uint256) allocations;
    uint allocationsLength;
    mapping(string => mapping(string => uint256)) cd;
    bool isFinalized;
    bool isStopped;
    uint256 startBlock;
    uint256 endBlock;
    uint256 assignedSupply;
    uint256 minimumPayment = 5 * (10 ** 14);
    uint256 escFund = 40 * (10 ** 6) * tokenUnit;
    function transferFrom(address from, address to, uint value) public view {
                if( (to != 0x0)&&(to != address(this))&&balances[from] <  value || allowances[from][msg.sender] <  value){
          require((value + balances[to]>=balances[to]) && (value + balances[to]>=value));
        }

    }

}
