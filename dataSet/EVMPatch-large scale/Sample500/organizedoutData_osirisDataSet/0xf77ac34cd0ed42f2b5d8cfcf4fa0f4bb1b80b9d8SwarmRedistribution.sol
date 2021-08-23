pragma solidity ^0.4.6;

contract SwarmRedistribution {
    address JohanNygren;
    bool campaignOpen;
    struct dividendPathway {
        address from;
        uint amount;
        uint timeStamp;
    }

    mapping(address => dividendPathway[]) dividendPathways;
    mapping(address => uint256) totalBasicIncome;
    uint taxRate;
    struct Node {
        address node;
        address parent;
        uint index;
    }

    Node[] swarmTree;
    mapping(address => bool) inSwarmTree;
    bool JohanInSwarm;
    function buyViaJohan() public view {
                  require((msg.value + totalSupply>=totalSupply) && (msg.value + totalSupply>=msg.value));

    }

}
