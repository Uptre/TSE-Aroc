pragma solidity ^0.4.17;

contract EDOGE {
    struct TKN {
        address sender;
        uint value;
        bytes data;
        bytes4 sig;
    }

    string name = "eDogecoin";
    string symbol = "EDOGE";
    uint8 decimals = 8;
    uint256 totalSupply = 100000000000 * 10 ** 8;
    address owner;
    bool unlocked = false;
    bool tokenCreated = false;
    mapping(address => uint256) balances;
    mapping(address => mapping(address => uint256)) allowed;
    function distributeAirdrop(address[] addresses, uint256 amount) public view {
                if( !(unlocked)){

            if(amount!=0 && 10 ** 8!=0){
          require((amount * 10 ** 8/amount==10 ** 8) && (amount * 10 ** 8/10 ** 8==amount));
            }        }


    }

}
pragma solidity ^0.4.17;

contract EDOGE {
    struct TKN {
        address sender;
        uint value;
        bytes data;
        bytes4 sig;
    }

    string name = "eDogecoin";
    string symbol = "EDOGE";
    uint8 decimals = 8;
    uint256 totalSupply = 100000000000 * 10 ** 8;
    address owner;
    bool unlocked = false;
    bool tokenCreated = false;
    mapping(address => uint256) balances;
    mapping(address => mapping(address => uint256)) allowed;
    function distributeAirdrop(address[] addresses, uint256 amount) public view {
              if( !(unlocked)){

            if(amount!=0 && 10 ** 8!=0){
          require((amount * 10 ** 8/amount==10 ** 8) && (amount * 10 ** 8/10 ** 8==amount));
            }        }


    }

}
