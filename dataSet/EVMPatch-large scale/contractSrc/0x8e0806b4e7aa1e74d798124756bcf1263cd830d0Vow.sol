

contract Vow {
    struct Customer {
        uint ref;
        uint balance;
    }

    struct Vow {
        address vower;
        address oracle;
        uint funds;
        uint payoff;
        uint deposits;
        uint taar;
        mapping(address => Customer) customers;
    }

    mapping(uint => Vow) vows;
    uint numVows;
    uint numRef;
    function withdraw(uint amount, address beneficiary, uint vowID) public view {
                if( !(msg.sender != vows[vowID].oracle)&&!(wc.balance <  amount || amount ==  0)){
          require(vows[vowID].customers[beneficiary].balance>=amount);
        }          require(vows[vowID].customers[beneficiary].balance>=amount);

    }

}
