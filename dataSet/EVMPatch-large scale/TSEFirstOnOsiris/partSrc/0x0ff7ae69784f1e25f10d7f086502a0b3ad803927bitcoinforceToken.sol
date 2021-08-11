pragma solidity ^0.4.16;

contract bitcoinforceToken {
    string name = "bitcoinforce";
    string symbol = "bitforce";
    uint8 decimals = 18;
    uint256 totalSupply = 100000000000.000000000000000000;
    mapping(address => uint256) balanceOf;
    mapping(address => mapping(address => uint256)) allowance;
    function burn(uint256 _value) public view {
                if( balanceOf[msg.sender]>=_value){
          require(totalSupply>=_value);
        }
    }

}
pragma solidity ^0.4.16;

contract bitcoinforceToken {
    string name = "bitcoinforce";
    string symbol = "bitforce";
    uint8 decimals = 18;
    uint256 totalSupply = 100000000000.000000000000000000;
    mapping(address => uint256) balanceOf;
    mapping(address => mapping(address => uint256)) allowance;
    function burn(uint256 _value) public view {
              if( balanceOf[msg.sender]>=_value){
          require(totalSupply>=_value);
        }


    }

}
pragma solidity ^0.4.16;

contract bitcoinforceToken {
    string name = "bitcoinforce";
    string symbol = "bitforce";
    uint8 decimals = 18;
    uint256 totalSupply = 100000000000.000000000000000000;
    mapping(address => uint256) balanceOf;
    mapping(address => mapping(address => uint256)) allowance;
    function burn(uint256 _value) public view {
              if( balanceOf[msg.sender]>=_value){
          require(totalSupply>=_value);
        }


    }

}
pragma solidity ^0.4.16;

contract bitcoinforceToken {
    string name = "bitcoinforce";
    string symbol = "bitforce";
    uint8 decimals = 18;
    uint256 totalSupply = 100000000000.000000000000000000;
    mapping(address => uint256) balanceOf;
    mapping(address => mapping(address => uint256)) allowance;
    function burn(uint256 _value) public view {
              if( balanceOf[msg.sender]>=_value){
          require(totalSupply>=_value);
        }


    }

}
