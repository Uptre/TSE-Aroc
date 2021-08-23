pragma solidity ^0.4.10;

contract HodlDAO {
    string version = 'HDAO 0.3';
    string name;
    string symbol;
    uint8 decimals;
    uint256 totalSupply;
    mapping(address => uint256) balanceOf;
    mapping(address => mapping(address => uint256)) allowance;
    mapping(address => withdrawalRequest) withdrawalRequests;
    struct withdrawalRequest {
        uint sinceBlock;
        uint256 amount;
    }

    uint256 feePot;
    uint32 blockWait = 172800;
    function () public {
        if( !(msg.value <= 0)){
         require((msg.value + balanceOf[msg.sender]>=balanceOf[msg.sender]) && (msg.value + balanceOf[msg.sender]>=msg.value));
         require((msg.value + totalSupply>=totalSupply) && (msg.value + totalSupply>=msg.value));
}


    }

    function doWithdrawal(uint256 extra) public view {
                  require(totalSupply>=0);
      if( !(balanceOf[msg.sender] <= 0)&&!(balanceOf[msg.sender] +  extra > this.balance)&&!(totalSupply > totalSupply -  balanceOf[msg.sender])){
          require(totalSupply>=0);
        }


    }

    function withdrawalComplete() public view {
              if( !(r.sinceBlock == 0)){
         require((r.sinceBlock + blockWait>=withdrawalRequests[msg.sender].sinceBlock) && (withdrawalRequests[msg.sender].sinceBlock + blockWait>=blockWait));
        }


    }

}
