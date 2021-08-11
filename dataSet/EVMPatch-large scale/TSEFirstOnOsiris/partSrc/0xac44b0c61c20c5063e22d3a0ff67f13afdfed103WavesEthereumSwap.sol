pragma solidity ^0.4.2;

contract WavesEthereumSwap {
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
pragma solidity ^0.4.2;

contract WavesEthereumSwap {
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
