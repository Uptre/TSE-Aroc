pragma  solidity  ^0.4.16;

contract EventInfo {
    struct milestones_struct {
        uint p1;
        uint p2;
        uint p3;
        uint p4;
        uint p5;
        uint p6;
    }

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

    uint HACKATHON_5_WEEKS = 60 * 60 * 24 * 7 * 5;
    uint T_1_WEEK = 60 * 60 * 24 * 7;
    uint eventStart = 1479391200;
    uint eventEnd = eventStart + HACKATHON_5_WEEKS;
    function getTradingStart() public view {
                  require((eventStart + T_1_WEEK>=eventStart) && (eventStart + T_1_WEEK>=T_1_WEEK));


    }

    function getVotingStart() public view {
                  require((eventStart + T_1_WEEK>=eventStart) && (eventStart + T_1_WEEK>=T_1_WEEK));


    }

}
