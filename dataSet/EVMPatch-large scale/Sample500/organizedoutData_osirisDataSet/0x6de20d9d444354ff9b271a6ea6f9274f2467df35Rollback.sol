pragma  solidity  ^0.4.16;

contract Rollback {
    Token token = Token(0xD850942eF8811f2A866692A623011bDE52a462C1);
    uint256 totalSetCredit;
    uint256 totalReturnedCredit;
    struct Credit {
        uint128 total;
        uint128 used;
    }

    mapping(address => Credit) credits;
    function setCredit(address _account, uint256 _amount) public view {
                 require((_amount + totalSetCredit>=totalSetCredit) && (_amount + totalSetCredit>=_amount));
          require(totalSetCredit+_amount>=credits[_account].total);


    }

}

contract Token{}
pragma solidity ^0.4.11;

contract Rollback {
    Token token = Token(0xD850942eF8811f2A866692A623011bDE52a462C1);
    uint256 totalSetCredit;
    uint256 totalReturnedCredit;
    struct Credit {
        uint128 total;
        uint128 used;
    }

    mapping(address => Credit) credits;
    function setCredit(address _account, uint256 _amount) public view {
                  require((totalSetCredit+_amount)>=credits[_account].total);
         require((_amount + totalSetCredit>=totalSetCredit) && (_amount + totalSetCredit>=_amount));


    }

}
pragma solidity ^0.4.11;

contract Rollback {
    Token token = Token(0xD850942eF8811f2A866692A623011bDE52a462C1);
    uint256 totalSetCredit;
    uint256 totalReturnedCredit;
    struct Credit {
        uint128 total;
        uint128 used;
    }

    mapping(address => Credit) credits;
    function setCredit(address _account, uint256 _amount) public view {
                  require((totalSetCredit+_amount)>=credits[_account].total);
         require((_amount + totalSetCredit>=totalSetCredit) && (_amount + totalSetCredit>=_amount));


    }

}
