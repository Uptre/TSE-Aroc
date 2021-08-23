pragma  solidity  ^0.4.16;

contract DSTContract {
    struct milestones_struct {
        uint p1;
        uint p2;
        uint p3;
        uint p4;
        uint p5;
        uint p6;
    }

    uint DECIMAL_ZEROS = 1000;
    uint PROPOSAL_LIFETIME = 10 days;
    uint PROPOSAL_FUNDS_TH = 20;
    address executive;
    EventInfo eventInfo;
    address virtualExchangeAddress;
    HackerGold hackerGold;
    mapping(address => uint256) votingRights;
    uint hkgPrice;
    uint etherPrice;
    string name = "...";
    uint8 decimals = 3;
    string symbol = "...";
    bool ableToIssueTokens = true;
    uint preferedQtySold;
    uint collectedHKG;
    uint collectedEther;
    mapping(bytes32 => Proposal) proposals;
    enum ProposalCurrency{HKG, ETHER}
    ProposalCurrency enumDeclaration;
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

    uint counterProposals;
    uint timeOfLastProposal;
    Proposal[] listProposals;
    struct ImpeachmentProposal {
        string urlDetails;
        address newExecutive;
        uint votindEndTS;
        uint votesSupporting;
        mapping(address => bool) voted;
    }

    ImpeachmentProposal lastImpeachmentProposal;
    function supportImpeachment() public view {
        if( !(lastImpeachmentProposal.newExecutive == 0x0)&&!(votingRights[msg.sender] == 0) ){
          require((lastImpeachmentProposal.votindEndTS + 2 weeks>=lastImpeachmentProposal.votindEndTS) && (lastImpeachmentProposal.votindEndTS + 2 weeks>=2 weeks));
        if( !(lastImpeachmentProposal.votindEndTS +  2 weeks <= now)){
          require((votingRights[msg.sender] + lastImpeachmentProposal.votesSupporting>=lastImpeachmentProposal.votesSupporting) && (votingRights[msg.sender] + lastImpeachmentProposal.votesSupporting>=votingRights[msg.sender]));
        }
}


    }

}

contract EventInfo{}
contract HackerGold{}
contract ProposalCurrency{}