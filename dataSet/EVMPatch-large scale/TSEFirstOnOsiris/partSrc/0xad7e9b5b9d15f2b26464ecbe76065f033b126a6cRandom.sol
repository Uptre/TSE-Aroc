pragma solidity ^0.4.18;

contract Random {
    uint ticketsNum = 0;
    mapping(uint => uint) tickets;
    mapping(uint => bool) payed_back;
    address[] addr;
    uint32 random_num = 0;
    uint liveBlocksNumber = 5760;
    uint startBlockNumber = 0;
    uint endBlockNumber = 0;
    uint onePotWei = 10000000000000000;
    address inv_contract = 0x5192c55B1064D920C15dB125eF2E69a17558E65a;
    address rtm_contract = 0x7E08c0468CBe9F48d8A4D246095dEb8bC1EB2e7e;
    address mrk_contract = 0xc01c08B2b451328947bFb7Ba5ffA3af96Cfc3430;
    address manager;
    uint winners_count = 0;
    uint last_winner = 0;
    uint others_prize = 0;
    uint fee_balance = 0;
    function EndLottery() public view {
                 require((winners_count + 1>=winners_count) && (winners_count + 1>=1));


    }

    function startNewDraw(uint _msg_value) public view {
                 require(((block.number -  1) + liveBlocksNumber>=(block.number -  1)) && ((block.number -  1) + liveBlocksNumber>=liveBlocksNumber));
         require(((this.balance - _msg_value) + fee_balance>=fee_balance) && ((this.balance - _msg_value) + fee_balance>=(this.balance - _msg_value)));
          require(this.balance>=_msg_value);


    }

}
pragma solidity ^0.4.18;

contract Random {
    uint ticketsNum = 0;
    mapping(uint => uint) tickets;
    mapping(uint => bool) payed_back;
    address[] addr;
    uint32 random_num = 0;
    uint liveBlocksNumber = 5760;
    uint startBlockNumber = 0;
    uint endBlockNumber = 0;
    uint onePotWei = 10000000000000000;
    address inv_contract = 0x5192c55B1064D920C15dB125eF2E69a17558E65a;
    address rtm_contract = 0x7E08c0468CBe9F48d8A4D246095dEb8bC1EB2e7e;
    address mrk_contract = 0xc01c08B2b451328947bFb7Ba5ffA3af96Cfc3430;
    address manager;
    uint winners_count = 0;
    uint last_winner = 0;
    uint others_prize = 0;
    uint fee_balance = 0;
    function EndLottery() public view {
                 require((winners_count + 1>=winners_count) && (winners_count + 1>=1));


    }

    function startNewDraw(uint _msg_value) public view {
                 require(((block.number -  1) + liveBlocksNumber>=(block.number -  1)) && ((block.number -  1) + liveBlocksNumber>=liveBlocksNumber));
         require(((this.balance - _msg_value) + fee_balance>=fee_balance) && ((this.balance - _msg_value) + fee_balance>=(this.balance - _msg_value)));
          require(this.balance>=_msg_value);


    }

}
