pragma solidity ^0.4.11;

contract G5 {
    uint256 ceiling;
    uint256 floor;
    uint256 lastUpdate;
    string name = "G5";
    string symbol = "G5";
    uint8 decimals = 8;
    function maybeUpdate() public view {
                if( block.number >= lastUpdate +  10){
        }
    }

    function updateCeiling() public view {
        
            if(floor!=0 && 21!=0){
          require((floor * 21 / 20/floor==21) && (floor * 21 / 20/21==floor));
            }
    }

}
