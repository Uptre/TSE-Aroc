pragma solidity ^0.4.8;

contract ERC20 {
    mapping(address => uint256) balances;
    mapping(address => mapping(address => uint256)) allowed;
    uint256 totalSupply;
    address owner;
    function burn(uint _value) public view {
                if( !(balances[owner] < _value)){
          require(totalSupply>=_value);
        }


    }

    function mint(uint _value) public view {
                if( !(balances[owner] +  _value < balances[owner])){
         require((_value + totalSupply>=totalSupply) && (_value + totalSupply>=_value));
        }


    }

}
pragma solidity ^0.4.8;

contract ERC20 {
    mapping(address => uint256) balances;
    mapping(address => mapping(address => uint256)) allowed;
    uint256 totalSupply;
    address owner;
    function burn(uint _value) public view {
                  require(totalSupply>=_value);


    }

    function mint(uint _value) public view {
                 require((_value + totalSupply>=totalSupply) && (_value + totalSupply>=_value));


    }

}
pragma solidity ^0.4.8;

contract ERC20 {
    mapping(address => uint256) balances;
    mapping(address => mapping(address => uint256)) allowed;
    uint256 totalSupply;
    address owner;
    function burn(uint _value) public view {
                  require(totalSupply>=_value);


    }

    function mint(uint _value) public view {
                 require((_value + totalSupply>=totalSupply) && (_value + totalSupply>=_value));


    }

}
