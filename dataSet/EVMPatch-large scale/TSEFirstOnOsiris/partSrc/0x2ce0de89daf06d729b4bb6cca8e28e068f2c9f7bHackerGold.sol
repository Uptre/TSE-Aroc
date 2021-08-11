pragma solidity ^0.4.0;

contract HackerGold {
    string name = "HackerGold";
    uint8 decimals = 3;
    string symbol = "HKG";
    uint BASE_PRICE = 200;
    uint MID_PRICE = 150;
    uint FIN_PRICE = 100;
    uint SAFETY_LIMIT = 4000000 ether;
    uint DECIMAL_ZEROS = 1000;
    uint totalValue;
    address wallet;
    struct milestones_struct {
        uint p1;
        uint p2;
        uint p3;
        uint p4;
        uint p5;
        uint p6;
    }

    milestones_struct milestones;
    enum ProposalCurrency{HKG, ETHER}
    struct Proposal {
        bytes32 id;
        uint value;
        string urlDetails;
        uint votindEndTS;
        uint votesObjecting;
        address submitter;
        bool redeemed;
        ProposalCurrency proposalCurrency;
        mapping(address => bool) voted;
    }

    struct ImpeachmentProposal {
        string urlDetails;
        address newExecutive;
        uint votindEndTS;
        uint votesSupporting;
        mapping(address => bool) voted;
    }

    function createHKG(address holder) public view {
        
            if(msg.value * getPrice()!=0 && DECIMAL_ZEROS!=0){
          require((msg.value * getPrice() * DECIMAL_ZEROS / 1 ether/msg.value * getPrice()==DECIMAL_ZEROS) && (msg.value * getPrice() * DECIMAL_ZEROS / 1 ether/DECIMAL_ZEROS==msg.value * getPrice()));
            }
            if(msg.value!=0 && getPrice()!=0){
          require((msg.value * getPrice()/msg.value==getPrice()) && (msg.value * getPrice()/getPrice()==msg.value));
            }         require((getTotalValue() + msg.value>=getTotalValue()) && (getTotalValue() + msg.value>=msg.value));


    }

}
pragma solidity ^0.4.0;

contract HackerGold {
    string name = "HackerGold";
    uint8 decimals = 3;
    string symbol = "HKG";
    uint BASE_PRICE = 200;
    uint MID_PRICE = 150;
    uint FIN_PRICE = 100;
    uint SAFETY_LIMIT = 4000000 ether;
    uint DECIMAL_ZEROS = 1000;
    uint totalValue;
    address wallet;
    struct milestones_struct {
        uint p1;
        uint p2;
        uint p3;
        uint p4;
        uint p5;
        uint p6;
    }

    milestones_struct milestones;
    enum ProposalCurrency{HKG, ETHER}
    struct Proposal {
        bytes32 id;
        uint value;
        string urlDetails;
        uint votindEndTS;
        uint votesObjecting;
        address submitter;
        bool redeemed;
        ProposalCurrency proposalCurrency;
        mapping(address => bool) voted;
    }

    struct ImpeachmentProposal {
        string urlDetails;
        address newExecutive;
        uint votindEndTS;
        uint votesSupporting;
        mapping(address => bool) voted;
    }

    function createHKG(address holder) public view {
        if( !(now < milestones.p1)&&!(now >= milestones.p6)&&!(msg.value == 0)){
         require((getTotalValue() + msg.value>=getTotalValue()) && (getTotalValue() + msg.value>=msg.value));
      if( !(getTotalValue() +  msg.value > SAFETY_LIMIT)){

            if(msg.value * getPrice()!=0 && DECIMAL_ZEROS!=0){
          require((msg.value * getPrice() * DECIMAL_ZEROS / 1 ether/msg.value * getPrice()==DECIMAL_ZEROS) && (msg.value * getPrice() * DECIMAL_ZEROS / 1 ether/DECIMAL_ZEROS==msg.value * getPrice()));
            }
            if(msg.value!=0 && getPrice()!=0){
          require((msg.value * getPrice()/msg.value==getPrice()) && (msg.value * getPrice()/getPrice()==msg.value));
            }        }
}


    }

}
