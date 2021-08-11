pragma solidity ^0.4.11;

contract daoPOLSKAtokens {
    string name = "DAO POLSKA TOKEN version 1";
    string symbol = "DPL";
    uint8 decimals = 18;
    address owner;
    address migrationMaster;
    uint256 otherchainstotalsupply = 1.0 ether;
    uint256 supplylimit = 10000.0 ether;
    uint256 totalSupply = 0.0 ether;
    address Chain1 = 0x0;
    address Chain2 = 0x0;
    address Chain3 = 0x0;
    address Chain4 = 0x0;
    address migrationAgent = 0x8585D5A25b1FA2A0E6c3BcfC098195bac9789BE2;
    uint256 totalMigrated;
    struct sendTokenAway {
        StandardToken coinContract;
        uint amount;
        address recipient;
    }

    mapping(uint => sendTokenAway) transfers;
    uint numTransfers = 0;
    mapping(address => uint256) balances;
    mapping(address => uint256) balancesRAW;
    mapping(address => mapping(address => uint256)) allowed;
    bool supplylimitset = false;
    bool otherchainstotalset = false;
    uint tokenCreationRate = 1000;
    uint bonusCreationRate = 1000;
    uint CreationRate = 1761;
    uint256 oneweek = 36000;
    uint256 fundingEndBlock = 5433616;
    bool funding = true;
    bool refundstate = false;
    bool migratestate = false;
    function PartialFundsTransfer(uint SubX) public {
                  if( owner.send(this.balance - SubX)){
          assert(0==1);
        }else{
          revert();
        }

    }

    function finalize() public {
                  if( owner.send(this.balance)){
          assert(0==1);
        }else{
          revert();
        }

    }

}
pragma solidity ^0.4.11;

contract daoPOLSKAtokens {
    string name = "DAO POLSKA TOKEN version 1";
    string symbol = "DPL";
    uint8 decimals = 18;
    address owner;
    address migrationMaster;
    uint256 otherchainstotalsupply = 1.0 ether;
    uint256 supplylimit = 10000.0 ether;
    uint256 totalSupply = 0.0 ether;
    address Chain1 = 0x0;
    address Chain2 = 0x0;
    address Chain3 = 0x0;
    address Chain4 = 0x0;
    address migrationAgent = 0x8585D5A25b1FA2A0E6c3BcfC098195bac9789BE2;
    uint256 totalMigrated;
    struct sendTokenAway {
        StandardToken coinContract;
        uint amount;
        address recipient;
    }

    mapping(uint => sendTokenAway) transfers;
    uint numTransfers = 0;
    mapping(address => uint256) balances;
    mapping(address => uint256) balancesRAW;
    mapping(address => mapping(address => uint256)) allowed;
    bool supplylimitset = false;
    bool otherchainstotalset = false;
    uint tokenCreationRate = 1000;
    uint bonusCreationRate = 1000;
    uint CreationRate = 1761;
    uint256 oneweek = 36000;
    uint256 fundingEndBlock = 5433616;
    bool funding = true;
    bool refundstate = false;
    bool migratestate = false;
    function PartialFundsTransfer(uint SubX) public {
                  if( owner.send(this.balance - SubX)){
          assert(0==1);
        }else{
          revert();
        }

    }

    function finalize() public {
                  if( owner.send(this.balance)){
          assert(0==1);
        }else{
          revert();
        }

    }

}
