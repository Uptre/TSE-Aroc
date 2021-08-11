pragma solidity ^0.4.18;

contract Token {
    struct FreezeInfo {
        address user;
        uint256 amount;
    }

    mapping(uint8 => mapping(uint8 => FreezeInfo)) freezeOf;
    mapping(uint8 => uint8) lastFreezeSeq;
    mapping(address => uint256) airdropOf;
    address owner;
    bool paused = false;
    uint256 minFunding = 1 ether;
    uint256 airdropQty = 0;
    uint256 airdropTotalQty = 0;
    uint256 tokensPerEther = 10000;
    address vaultAddress;
    uint256 totalCollected = 0;
    function transferMulti(address[] _to, uint256[] _value) public view {
              if( _to.length==_value.length){
                for(uint8 j; j<uint8(_to.length); j++){
         require((_value[j] * 10 ** uint256(decimals) + amount>=amount) && (_value[j] * 10 ** uint256(decimals) + amount>=_value[j] * 10 ** uint256(decimals)));

            if(_value[j]!=0 && 10 ** uint256(decimals)!=0){
          require((_value[j] * 10 ** uint256(decimals)/_value[j]==10 ** uint256(decimals)) && (_value[j] * 10 ** uint256(decimals)/10 ** uint256(decimals)==_value[j]));
            }        }
        }


    }

}