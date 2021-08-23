pragma solidity ^0.4.19;

contract ERC20Beercoin {
    mapping(address => uint256) balances;
    mapping(address => mapping(address => uint256)) allowances;
    function producedCaps() public view {
                 require((uint64(packedProducedCaps) + ((uint64(packedProducedCaps >> 192)+uint64(packedProducedCaps >> 128))+uint64(packedProducedCaps >> 64))>=((uint64(packedProducedCaps >> 192)+uint64(packedProducedCaps >> 128))+uint64(packedProducedCaps >> 64))) && (uint64(packedProducedCaps) + ((uint64(packedProducedCaps >> 192)+uint64(packedProducedCaps >> 128))+uint64(packedProducedCaps >> 64))>=uint64(packedProducedCaps)));


    }

    function scannedCaps() public view {
                 require((uint64(packedScannedCaps) + ((uint64(packedScannedCaps >> 192)+uint64(packedScannedCaps >> 128))+uint64(packedScannedCaps >> 64))>=((uint64(packedScannedCaps >> 192)+uint64(packedScannedCaps >> 128))+uint64(packedScannedCaps >> 64))) && (uint64(packedScannedCaps) + ((uint64(packedScannedCaps >> 192)+uint64(packedScannedCaps >> 128))+uint64(packedScannedCaps >> 64))>=uint64(packedScannedCaps)));


    }

    function totalSupply() public view {
                  require(((((INITIAL_SUPPLY+(caps >> 192) *  DIAMOND_VALUE)+((caps >> 128) & 0xFFFFFFFFFFFFFFFF) *  GOLD_VALUE)+((caps >> 64) & 0xFFFFFFFFFFFFFFFF) *  SILVER_VALUE)+(caps & 0xFFFFFFFFFFFFFFFF) *  BRONZE_VALUE)>=burntValue);
         require(((packedScannedCaps & 0xFFFFFFFFFFFFFFFF) * BRONZE_VALUE + (((INITIAL_SUPPLY+(caps >> 192) *  DIAMOND_VALUE)+((caps >> 128) & 0xFFFFFFFFFFFFFFFF) *  GOLD_VALUE)+((caps >> 64) & 0xFFFFFFFFFFFFFFFF) *  SILVER_VALUE)>=(((INITIAL_SUPPLY+(caps >> 192) *  DIAMOND_VALUE)+((caps >> 128) & 0xFFFFFFFFFFFFFFFF) *  GOLD_VALUE)+((caps >> 64) & 0xFFFFFFFFFFFFFFFF) *  SILVER_VALUE)) && ((packedScannedCaps & 0xFFFFFFFFFFFFFFFF) * BRONZE_VALUE + (((INITIAL_SUPPLY+(caps >> 192) *  DIAMOND_VALUE)+((caps >> 128) & 0xFFFFFFFFFFFFFFFF) *  GOLD_VALUE)+((caps >> 64) & 0xFFFFFFFFFFFFFFFF) *  SILVER_VALUE)>=(packedScannedCaps & 0xFFFFFFFFFFFFFFFF) * BRONZE_VALUE));

            if((packedScannedCaps & 0xFFFFFFFFFFFFFFFF)!=0 && BRONZE_VALUE!=0){
          require(((packedScannedCaps & 0xFFFFFFFFFFFFFFFF) * BRONZE_VALUE/(packedScannedCaps & 0xFFFFFFFFFFFFFFFF)==BRONZE_VALUE) && ((packedScannedCaps & 0xFFFFFFFFFFFFFFFF) * BRONZE_VALUE/BRONZE_VALUE==(packedScannedCaps & 0xFFFFFFFFFFFFFFFF)));
            }

    }

}
