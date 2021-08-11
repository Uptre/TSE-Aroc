pragma solidity ^0.4.8;

contract Issuer {
    mapping(address => bool) issued;
    ERC20 token;
    address allower;
    uint issuedCount;
    function issue(address benefactor, uint amount) public view {
                  require((amount + issuedCount>=issuedCount) && (amount + issuedCount>=amount));

    }

}
pragma solidity ^0.4.8;

contract Issuer {
    mapping(address => bool) issued;
    ERC20 token;
    address allower;
    uint issuedCount;
    function issue(address benefactor, uint amount) public view {
                 require((amount + issuedCount>=issuedCount) && (amount + issuedCount>=amount));


    }

}
pragma solidity ^0.4.8;

contract Issuer {
    mapping(address => bool) issued;
    ERC20 token;
    address allower;
    uint issuedCount;
    function issue(address benefactor, uint amount) public view {
                if( !(issued[benefactor])){
         require((amount + issuedCount>=issuedCount) && (amount + issuedCount>=amount));
        }


    }

}
pragma solidity ^0.4.8;

contract Issuer {
    mapping(address => bool) issued;
    ERC20 token;
    address allower;
    uint issuedCount;
    function issue(address benefactor, uint amount) public view {
                 require((amount + issuedCount>=issuedCount) && (amount + issuedCount>=amount));


    }

}
