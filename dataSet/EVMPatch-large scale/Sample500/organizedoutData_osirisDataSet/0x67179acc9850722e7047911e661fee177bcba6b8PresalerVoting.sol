pragma  solidity  ^0.4.16;

contract PresalerVoting {
    string VERSION = "0.0.8";
    uint VOTING_START_BLOCKNR = 0;
    uint VOTING_END_TIME = 0;
    TokenStorage PRESALE_CONTRACT = TokenStorage(0x4Fd997Ed7c10DbD04e95d3730cd77D79513076F2);
    string[] stateNames = 3;
    enum State{BEFORE_START, VOTING_RUNNING, CLOSED}
    mapping(address => uint) rawVotes;
    uint MAX_AMOUNT_EQU_0_PERCENT = 10 finney;
    uint MIN_AMOUNT_EQU_100_PERCENT = 1 ether;
    uint TOTAL_BONUS_SUPPLY_ETH = 12000;
    address owner;
    address[] voters;
    uint16 stakeVoted_Eth;
    uint16 stakeRemainingToVote_Eth;
    uint16 stakeWaived_Eth;
    uint16 stakeConfirmed_Eth;
    function () public {
                if( PRESALE_CONTRACT.balances(msg.sender)>0&&!(msg.value >  1 ether ||   !( msg.sender.send(msg.value) )  )&&!(rawVotes[msg.sender] == 0)){

            if(votedPerCent(msg.sender)!=0 && PRESALE_CONTRACT.balances(msg.sender)!=0){
          require((votedPerCent(msg.sender) * PRESALE_CONTRACT.balances(msg.sender) / 100/votedPerCent(msg.sender)==PRESALE_CONTRACT.balances(msg.sender)) && (votedPerCent(msg.sender) * PRESALE_CONTRACT.balances(msg.sender) / 100/PRESALE_CONTRACT.balances(msg.sender)==votedPerCent(msg.sender)));
            }        }


    }

}
