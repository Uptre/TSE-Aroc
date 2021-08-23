

contract IssuerWithId {
    mapping(uint => bool) issued;
    StandardTokenExt token;
    address allower;
    uint issuedCount;
    function issue(address benefactor, uint amount, uint id) public view {
                 require((amount + issuedCount>=issuedCount) && (amount + issuedCount>=amount));


    }

}
