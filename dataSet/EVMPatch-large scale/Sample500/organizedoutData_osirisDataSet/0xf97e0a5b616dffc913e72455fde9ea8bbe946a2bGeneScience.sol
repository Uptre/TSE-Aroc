pragma solidity ^0.4.18;

contract GeneScience {
    bool isGeneScience = true;
    uint256 maskLast8Bits = uint256(0xff);
    uint256 maskFirst248Bits = uint256(~0xff);
    function mixGenes(uint256 _genes1, uint256 _genes2, uint256 _targetBlock) public view {
                if( block.number>_targetBlock&&uint256(block.blockhash(_targetBlock)) == 0){
          require(((block.number & maskFirst248Bits) + (_targetBlock & maskLast8Bits)>=(block.number & maskFirst248Bits)) && ((block.number & maskFirst248Bits) + (_targetBlock & maskLast8Bits)>=(_targetBlock & maskLast8Bits)));
        }
    }

}
