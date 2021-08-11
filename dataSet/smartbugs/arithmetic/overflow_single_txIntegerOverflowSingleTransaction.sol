pragma solidity ^0.4.23;

contract IntegerOverflowSingleTransaction {
    uint count = 1;
    function overflowaddtostate(uint256 input) public view {
                 require((input + count>=count) && (input + count>=input));


    }

    function overflowlocalonly(uint256 input) public view {
                 require((count + input>=count) && (count + input>=input));


    }

    function overflowmulocalonly(uint256 input) public view {
        
            if(count!=0 && input!=0){
          require((count * input/count==input) && (count * input/input==count));
            }

    }

    function overflowmultostate(uint256 input) public view {
        
            if(count!=0 && input!=0){
          require((input * count/count==input) && (input * count/input==count));
            }

    }

    function underflowlocalonly(uint256 input) public view {
        
    }

    function underflowtostate(uint256 input) public view {
                  require(count>=input);


    }

}
