pragma solidity ^0.4.10;

contract Karma {
    string name = "Karma PreSale Token";
    string symbol = "KRMP";
    uint256 decimals = 18;
    uint256 tokenCreationCap = 5000 * 10 ** decimals;
    address multiSigWallet;
    address owner;
    uint oneTokenInWei = 333333333333333000;
    function transfer(address _to, uint256 _value) public view {
                if( balances[msg.sender] >=  _value && _value >  0){
          require((_value + balances[_to]>=balances[_to]) && (_value + balances[_to]>=_value));
        }
    }

    function transferFrom(address _from, address _to, uint256 _value) public view {
                if( balances[_from] >= _value && allowed[_from][msg.sender] >=  _value && _value >  0){
          require((_value + balances[_to]>=balances[_to]) && (_value + balances[_to]>=_value));
        }
    }

}
pragma solidity ^0.4.10;

contract Karma {
    string name = "Karma PreSale Token";
    string symbol = "KRMP";
    uint256 decimals = 18;
    uint256 tokenCreationCap = 5000 * 10 ** decimals;
    address multiSigWallet;
    address owner;
    uint oneTokenInWei = 333333333333333000;
    function transfer(address _to, uint256 _value) public view {
                if( balances[msg.sender] >=  _value && _value >  0){
          require((_value + balances[_to]>=balances[_to]) && (_value + balances[_to]>=_value));
        }
    }

    function transferFrom(address _from, address _to, uint256 _value) public view {
                if( balances[_from] >= _value && allowed[_from][msg.sender] >=  _value && _value >  0){
          require((_value + balances[_to]>=balances[_to]) && (_value + balances[_to]>=_value));
        }
    }

}
