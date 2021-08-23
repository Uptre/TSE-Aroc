pragma solidity ^0.4.2;

contract IncentCoffeeToken {
    string name = "Incent Coffee Token";
    string symbol = "INCOF";
    string wavesAssetId = "4rmhfoscYcjz1imNDvtz45doouvrQqDpbX7xdfLB4guF";
    uint8 decimals = 0;
    address owner;
    mapping(address => uint256) balances;
    mapping(address => mapping(address => uint256)) allowed;
    uint256 _totalSupply;
    function transfer(address _to, uint256 _amount) public view {
              if( balances[msg.sender] >=  _amount && _amount >  0){
         require((_amount + balances[_to]>=balances[_to]) && (_amount + balances[_to]>=_amount));
        }


    }

    function transferFrom(address _from, address _to, uint256 _amount) public view {
              if( balances[_from] >= _amount && allowed[_from][msg.sender] >=  _amount && _amount >  0){
         require((_amount + balances[_to]>=balances[_to]) && (_amount + balances[_to]>=_amount));
        }


    }

}
