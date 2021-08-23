
contract Private_Fund {
    address beneficiary;
    uint amountRaised;
    uint256 start;
    uint256 deadline;
    address creator;
    bool deadline_status = false;
    uint256 minAmount = 1 ether;
    Funder[] funders;
    struct Funder {
        address addr;
        uint amount;
    }

    function () public {
              if( !(now < start)&&!(now >= deadline)&&!(msg.value < minAmount)){
         require((msg.value + amountRaised>=amountRaised) && (msg.value + amountRaised>=msg.value));
        }


    }

    function deadline_modify(uint256 _start, uint256 _duration) public view {
                 require((_start + _duration * 1 days>=_start) && (_start + _duration * 1 days>=_duration * 1 days));

            if(_duration!=0 && 1 days!=0){
          require((_duration * 1 days/_duration==1 days) && (_duration * 1 days/1 days==_duration));
            }

    }

}
