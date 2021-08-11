pragma solidity ^0.4.8;

contract Kamera {
    function transfer(address _to, uint256 _value) public view {
                if( balances[msg.sender]>=_value){
        }
    }

    function transferFrom(address _from, address _to, uint256 _value) public view {
                if( balances[_from] >=  _value&&allowed[_from][msg.sender] >=  _value){
          require((_value + balances[_to]>=balances[_to]) && (_value + balances[_to]>=_value));
        }
    }

}
