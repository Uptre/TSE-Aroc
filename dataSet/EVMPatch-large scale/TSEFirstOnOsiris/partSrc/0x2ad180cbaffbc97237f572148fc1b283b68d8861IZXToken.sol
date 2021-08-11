
pragma solidity ^0.4.11;

contract IZXToken {
    function transferFrom(address _from, address _to, uint256 _value) public view {
                if( balances[_from] >=  _value&&allowed[_from][msg.sender] >=  _value&&TokenController(controller).onTransfer(_from, _to, _value)){
          require((_value + balances[_to]>=balances[_to]) && (_value + balances[_to]>=_value));
        }


    }

}
