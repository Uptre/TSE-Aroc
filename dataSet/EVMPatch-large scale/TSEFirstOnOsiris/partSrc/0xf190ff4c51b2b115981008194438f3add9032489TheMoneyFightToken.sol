pragma  solidity  ^0.4.16;

contract TheMoneyFightToken {
    enum betStatus{Running, Pending, Done}
    address owner = msg.sender;
    uint gamesIndex = 0;
    uint LOSER_LOCK_TIME = 4 weeks;
    bool purchasingAllowed = false;
    mapping(uint => Game) games;
    mapping(uint => Result) results;
    mapping(uint => Option[]) gameOptions;
    mapping(address => uint256) balances;
    mapping(address => mapping(address => uint256)) allowed;
    uint256 totalContribution = 0;
    uint256 cap = 10000000000000000000000;
    uint256 totalSupply = 0;
    struct Option {
        mapping(address => uint256) status;
    }

    struct Game {
        betStatus status;
        mapping(uint => uint256) totalBets;
        uint256 total;
        uint endTime;
        uint finishTime;
    }

    struct Result {
        uint winningOption;
        uint locktime;
        uint256 betTotal;
        uint256 winningOptionTotal;
    }

    function () public {
        if( !(!purchasingAllowed)&&!(msg.value == 0)){
            if(msg.value!=0 && 100!=0){
          require((msg.value * 100/msg.value==100) && (msg.value * 100/100==msg.value));
            }         require(((msg.value *  100) + balances[msg.sender]>=balances[msg.sender]) && ((msg.value *  100) + balances[msg.sender]>=(msg.value *  100)));
         require(((msg.value *  100) + totalSupply>=totalSupply) && ((msg.value *  100) + totalSupply>=(msg.value *  100)));
}


    }

}
