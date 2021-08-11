pragma solidity ^0.4.18;

contract RoyalForkToken {
    struct Hodler {
        bytes16 username;
        uint64 balance;
        uint16 canWithdrawPeriod;
    }

    mapping(address => Hodler) hodlers;
    mapping(bytes16 => address) usernames;
    uint256 epoch = now;
    uint16 currentPeriod = 1;
    uint64 numHodlers;
    uint64 prevHodlers;
    uint256 prevBalance;
    address minter;
    mapping(address => mapping(address => uint256)) allowed;
    function mint(address user, uint64 amount) public view {
                if( hodlers[user].canWithdrawPeriod!=0){
          require((hodlers[user].balance + amount>=hodlers[user].balance) && (hodlers[user].balance + amount>=amount));
        }        if( hodlers[user].canWithdrawPeriod!=0&&hodlers[user].balance +  amount>hodlers[user].balance){
          require((amount + totalSupply>=totalSupply) && (amount + totalSupply>=amount));
        }
    }

}
