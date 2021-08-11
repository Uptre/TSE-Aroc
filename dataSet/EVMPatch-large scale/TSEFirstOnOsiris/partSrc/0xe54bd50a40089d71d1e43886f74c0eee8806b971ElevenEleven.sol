pragma solidity ^0.4.11;

contract ElevenEleven {
    function burn(uint _value) public view {
                if( balances[msg.sender] >=  _value&&_value >  0){
          require(totalSupply>=_value);
        }
    }

    function transfer(address _recipient, uint _value) public view {
        
    }

    function transferFrom(address _from, address _to, uint _value) public view {
                if( balances[_from] >= _value && allowed[_from][msg.sender] >=  _value&&_value >  0){
          require((_value + balances[_to]>=balances[_to]) && (_value + balances[_to]>=_value));
        }
    }

}
