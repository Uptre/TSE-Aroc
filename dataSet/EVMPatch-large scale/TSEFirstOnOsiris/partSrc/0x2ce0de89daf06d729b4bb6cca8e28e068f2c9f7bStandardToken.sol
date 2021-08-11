pragma  solidity  ^0.4.16;

contract StandardToken {
    mapping(address => uint256) balances;
    mapping(address => mapping(address => uint256)) allowed;
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

    function transfer(address to, uint256 value) public view {
                if( balances[msg.sender] >=  value && value >  0){
          require((value + balances[to]>=balances[to]) && (value + balances[to]>=value));
        }


    }

}
pragma solidity ^0.4.0;

contract StandardToken {
    mapping(address => uint256) balances;
    mapping(address => mapping(address => uint256)) allowed;
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

    function transfer(address to, uint256 value) public view {
              if( balances[msg.sender] >=  value && value >  0){
         require((value + balances[to]>=balances[to]) && (value + balances[to]>=value));
        }


    }

}
pragma solidity ^0.4.0;

contract StandardToken {
    mapping(address => uint256) balances;
    mapping(address => mapping(address => uint256)) allowed;
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

    function transfer(address to, uint256 value) public view {
              if( balances[msg.sender] >=  value && value >  0){
         require((value + balances[to]>=balances[to]) && (value + balances[to]>=value));
        }


    }

}
