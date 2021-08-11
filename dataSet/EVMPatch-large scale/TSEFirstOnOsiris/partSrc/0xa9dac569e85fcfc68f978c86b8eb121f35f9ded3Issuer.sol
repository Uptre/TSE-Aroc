contract Issuer {
    mapping(address => bool) issued;
    StandardTokenExt token;
    address allower;
    uint issuedCount;
    function issue(address benefactor, uint amount) public view {
                if( !(issued[benefactor])){
         require((amount + issuedCount>=issuedCount) && (amount + issuedCount>=amount));
        }


    }

}
contract StandardTokenExt{}

contract Issuer {
    mapping(address => bool) issued;
    StandardTokenExt token;
    address allower;
    uint issuedCount;
    function issue(address benefactor, uint amount) public view {
                 require((amount + issuedCount>=issuedCount) && (amount + issuedCount>=amount));


    }

}
