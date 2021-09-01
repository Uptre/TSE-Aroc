pragma solidity ^0.4.19;

contract Payee {
    uint256 price;
    address storageAddress;
    address founder;
    bool changeable;
    mapping(address => bool) adminStatus;
    Storage s;
    function pay(address _addr, uint256 count) public view {
                if( changeable==true){

            if(price!=0 && count!=0){
          require((price * count/price==count) && (price * count/count==price));
            }        }


    }

}