pragma solidity ^0.4.11;

contract G5 {
    uint256 ceiling;
    uint256 floor;
    uint256 lastUpdate;
    string name = "G5";
    string symbol = "G5";
    uint8 decimals = 8;
    function sell(uint _value) public view {
                if( _value>0&&_value<=balances[msg.sender]){

            if(_value!=0 && floor!=0){
          require((_value * floor/_value==floor) && (_value * floor/floor==_value));
            }        }
    }

}
pragma solidity ^0.4.11;

contract G5 {
    uint256 ceiling;
    uint256 floor;
    uint256 lastUpdate;
    string name = "G5";
    string symbol = "G5";
    uint8 decimals = 8;
    function sell(uint _value) public view {
              if( _value>0&&_value<=balances[msg.sender]){

            if(_value!=0 && floor!=0){
          require((_value * floor/_value==floor) && (_value * floor/floor==_value));
            }        }


    }

}
