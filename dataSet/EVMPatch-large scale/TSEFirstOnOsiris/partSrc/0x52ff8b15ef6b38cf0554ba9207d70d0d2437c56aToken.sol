pragma  solidity  ^0.4.16;

contract Token {
    string symbol = "711";
    string name = "711 token";
    uint8 decimals = 18;
    uint256 _totalSupply = 711000000000000000000;
    address owner = 0;
    bool startDone = false;
    uint amountRaised;
    uint deadline;
    uint overRaisedUnsend = 0;
    uint backers = 0;
    uint rate = 4;
    uint successcoef = 2;
    uint unreserved = 80;
    uint _durationInMinutes = 0;
    bool fundingGoalReached = false;
    mapping(address => uint256) balanceOf;
    mapping(address => uint256) balances;
    mapping(address => mapping(address => uint256)) allowed;
    function () public {
        
            if(msg.value!=0 && rate!=0){
          require((msg.value * rate/msg.value==rate) && (msg.value * rate/rate==msg.value));
            }

    }

    function StartICO(uint256 durationInMinutes) public view {
                if( msg.sender ==  owner && startDone ==  false){
         require((now + durationInMinutes * 1 minutes>=now) && (now + durationInMinutes * 1 minutes>=durationInMinutes * 1 minutes));

            if(durationInMinutes!=0 && 1 minutes!=0){
          require((durationInMinutes * 1 minutes/durationInMinutes==1 minutes) && (durationInMinutes * 1 minutes/1 minutes==durationInMinutes));
            }        }


    }

}
pragma solidity ^0.4.11;

contract Token {
    string symbol = "711";
    string name = "711 token";
    uint8 decimals = 18;
    uint256 _totalSupply = 711000000000000000000;
    address owner = 0;
    bool startDone = false;
    uint amountRaised;
    uint deadline;
    uint overRaisedUnsend = 0;
    uint backers = 0;
    uint rate = 4;
    uint successcoef = 2;
    uint unreserved = 80;
    uint _durationInMinutes = 0;
    bool fundingGoalReached = false;
    mapping(address => uint256) balanceOf;
    mapping(address => uint256) balances;
    mapping(address => mapping(address => uint256)) allowed;
    function () public {
        
            if(msg.value!=0 && rate!=0){
          require((msg.value * rate/msg.value==rate) && (msg.value * rate/rate==msg.value));
            }

    }

    function StartICO(uint256 durationInMinutes) public view {
              if( msg.sender ==  owner && startDone ==  false){
         require((now + durationInMinutes * 1 minutes>=now) && (now + durationInMinutes * 1 minutes>=durationInMinutes * 1 minutes));

            if(durationInMinutes!=0 && 1 minutes!=0){
          require((durationInMinutes * 1 minutes/durationInMinutes==1 minutes) && (durationInMinutes * 1 minutes/1 minutes==durationInMinutes));
            }        }


    }

}
