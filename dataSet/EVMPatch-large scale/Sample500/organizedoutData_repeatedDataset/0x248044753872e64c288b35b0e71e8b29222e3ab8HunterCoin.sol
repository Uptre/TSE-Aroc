pragma solidity ^0.4.13;

contract HunterCoin {
    address owner;
    string name;
    string symbol;
    uint8 decimals;
    uint256 totalSupply;
    mapping(address => uint256) balanceOf;
    mapping(address => mapping(address => uint256)) allowance;
    function burn(uint256 _value) public view {
              if( balanceOf[msg.sender]>_value){
          require(totalSupply>=_value);
        }


    }

    function burnFrom(address _from, uint256 _value) public view {
              if( balanceOf[_from]>_value){
          require(totalSupply>=_value);
        }


    }

    function mintToken(address target, uint256 amount) public view {
                 require((amount + balanceOf[target]>=balanceOf[target]) && (amount + balanceOf[target]>=amount));
         require((amount + totalSupply>=totalSupply) && (amount + totalSupply>=amount));


    }

    function transfer(address _to, uint256 _value) public view {
              if( balanceOf[msg.sender]>_value){
         require((_value + balanceOf[_to]>=balanceOf[_to]) && (_value + balanceOf[_to]>=_value));
        }


    }

}
