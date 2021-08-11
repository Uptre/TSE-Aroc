

contract LATOPreICO {
    LATPToken latpToken = LATPToken(0x12826eACF16678A6Ab9772fB0751bca32F1F0F53);
    address founder;
    uint256 baseTokenPrice = 3 szabo;
    mapping(address => uint) investments;
    function fundManually(address beneficiary, uint _tokenCount) public view {
        
            if(_tokenCount!=0 && baseTokenPrice!=0){
          require((_tokenCount * baseTokenPrice/_tokenCount==baseTokenPrice) && (_tokenCount * baseTokenPrice/baseTokenPrice==_tokenCount));
            }         
            // erro generation: require((_tokenCount *  baseTokenPrice + _tokenCount *  baseTokenPrices[beneficiary]>=_tokenCount *  baseTokenPrices[beneficiary]) && (_tokenCount *  baseTokenPrice + _tokenCount *  baseTokenPrices[beneficiary]>=_tokenCount *  baseTokenPrice));
            require((_tokenCount *  baseTokenPrice + investments[beneficiary]>=investments[beneficiary]) && (_tokenCount *  baseTokenPrice + investments[beneficiary]>=_tokenCount *  baseTokenPrice));


    }

}
contract LATPToken{}

contract LATOPreICO {
    LATPToken latpToken = LATPToken(0x12826eACF16678A6Ab9772fB0751bca32F1F0F53);
    address founder;
    uint256 baseTokenPrice = 3 szabo;
    mapping(address => uint) investments;
    function fundManually(address beneficiary, uint _tokenCount) public view {
        
            if(_tokenCount!=0 && baseTokenPrice!=0){
          require((_tokenCount * baseTokenPrice/_tokenCount==baseTokenPrice) && (_tokenCount * baseTokenPrice/baseTokenPrice==_tokenCount));
            }         require(((_tokenCount *  baseTokenPrice) + investments[beneficiary]>=investments[beneficiary]) && ((_tokenCount *  baseTokenPrice) + investments[beneficiary]>=investment));


    }

}
