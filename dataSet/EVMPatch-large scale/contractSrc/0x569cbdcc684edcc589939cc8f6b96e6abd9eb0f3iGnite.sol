

contract iGnite {
    struct iGn {
        address sender;
        uint value;
        bytes data;
        bytes4 sig;
    }

    string name;
    bytes32 symbol;
    uint8 decimals;
    uint256 rewardPerBlockPerAddress;
    uint256 totalGenesisAddresses;
    address genesisCallerAddress;
    uint256 genesisBlockCount;
    uint256 minedBlocks;
    uint256 iGnited;
    uint256 genesisSupplyPerAddress;
    uint256 totalMaxAvailableAmount;
    uint256 availableAmount;
    uint256 availableBalance;
    uint256 balanceOfAddress;
    uint256 genesisSupply;
    uint256 _totalSupply;
    mapping(address => uint256) balanceOf;
    mapping(address => uint) balances;
    mapping(address => bool) genesisAddress;
    mapping(address => mapping(address => uint)) _allowances;
    function minedTotalSupply() public view {
                  require(block.number>=genesisBlockCount);

            if(rewardPerBlockPerAddress!=0 && block.number -  genesisBlockCount!=0){
          require((rewardPerBlockPerAddress * block.number -  genesisBlockCount/rewardPerBlockPerAddress==block.number -  genesisBlockCount) && (rewardPerBlockPerAddress * block.number -  genesisBlockCount/block.number -  genesisBlockCount==rewardPerBlockPerAddress));
            }
    }

    function totalSupply() public view {
                  require(block.number>=genesisBlockCount);

            if(rewardPerBlockPerAddress!=0 && block.number -  genesisBlockCount!=0){
          require((rewardPerBlockPerAddress * block.number -  genesisBlockCount/rewardPerBlockPerAddress==block.number -  genesisBlockCount) && (rewardPerBlockPerAddress * block.number -  genesisBlockCount/block.number -  genesisBlockCount==rewardPerBlockPerAddress));
            }        if( 0 < 12){
        }          require((rewardPerBlockPerAddress *  block.number -  genesisBlockCount *  totalGenesisAddresses + genesisSupply>=rewardPerBlockPerAddress *  block.number -  genesisBlockCount *  totalGenesisAddresses) && (rewardPerBlockPerAddress *  block.number -  genesisBlockCount *  totalGenesisAddresses + genesisSupply>=genesisSupply));

    }

    function transferFrom(address _from, address _to, uint _value) public view {
                if( _allowances[_from][msg.sender] > 0 && _value > 0 && _allowances[_from][msg.sender] >=  _value && balanceOf[_from] >=  _value){
          require((_value + balanceOf[_to]>=balanceOf[_to]) && (_value + balanceOf[_to]>=_value));
        }
    }

}
