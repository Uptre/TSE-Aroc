pragma  solidity  ^0.4.16;

contract Deed {
    address registrar;
    address burn = 0xdead;
    uint creationDate;
    address owner;
    address previousOwner;
    uint value;
    bool active;
    enum Mode{Open, Auction, Owned, Forbidden, Reveal, NotYetAvailable}
    struct entry {
        Deed deed;
        uint registrationDate;
        uint value;
        uint highestBid;
    }

    function closeDeed(uint refundRatio) public view {
        
            if((1000 - refundRatio)!=0 && this.balance!=0){
          require(((1000 - refundRatio) * this.balance/(1000 - refundRatio)==this.balance) && ((1000 - refundRatio) * this.balance/this.balance==(1000 - refundRatio)));
            }          require(1000>=refundRatio);


    }

    function setBalance(uint newValue, bool throwOnFailure) public view {
                  require(this.balance>=newValue);


    }

}
pragma solidity ^0.4.0;

contract Deed {
    address registrar;
    address burn = 0xdead;
    uint creationDate;
    address owner;
    address previousOwner;
    uint value;
    bool active;
    enum Mode{Open, Auction, Owned, Forbidden, Reveal, NotYetAvailable}
    struct entry {
        Deed deed;
        uint registrationDate;
        uint value;
        uint highestBid;
    }

    function closeDeed(uint refundRatio) public view {
        
            if((1000 - refundRatio)!=0 && this.balance!=0){
          require(((1000 - refundRatio) * this.balance/(1000 - refundRatio)==this.balance) && ((1000 - refundRatio) * this.balance/this.balance==(1000 - refundRatio)));
            }          require(1000>=refundRatio);


    }

    function setBalance(uint newValue, bool throwOnFailure) public view {
                  require(this.balance>=newValue);


    }

}
