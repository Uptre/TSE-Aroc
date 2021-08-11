pragma solidity ^0.4.11;

contract TronToken {
    string name = "Tronix";
    string symbol = "TRX";
    uint256 decimals = 6;
    mapping(address => uint256) balanceOf;
    mapping(address => mapping(address => uint256)) allowance;
    uint256 totalSupply = 0;
    bool stopped = false;
    uint256 valueFounder = 100000000000000000;
    address owner = 0x0;
    function burn(uint256 _value) public view {
                if( balanceOf[msg.sender]>=_value){
          require((_value + balanceOf[0x0]>=balanceOf[0x0]) && (_value + balanceOf[0x0]>=_value));
        }
    }

}
pragma solidity ^0.4.11;

contract TronToken {
    string name = "Tronix";
    string symbol = "TRX";
    uint256 decimals = 6;
    mapping(address => uint256) balanceOf;
    mapping(address => mapping(address => uint256)) allowance;
    uint256 totalSupply = 0;
    bool stopped = false;
    uint256 valueFounder = 100000000000000000;
    address owner = 0x0;
    function burn(uint256 _value) public view {
              if( balanceOf[msg.sender]>=_value){
         require((_value + balanceOf[0x0]>=balanceOf[0x0]) && (_value + balanceOf[0x0]>=_value));
        }


    }

}
pragma solidity ^0.4.11;

contract TronToken {
    string name = "Tronix";
    string symbol = "TRX";
    uint256 decimals = 6;
    mapping(address => uint256) balanceOf;
    mapping(address => mapping(address => uint256)) allowance;
    uint256 totalSupply = 0;
    bool stopped = false;
    uint256 valueFounder = 100000000000000000;
    address owner = 0x0;
    function burn(uint256 _value) public view {
              if( balanceOf[msg.sender]>=_value){
         require((_value + balanceOf[0x0]>=balanceOf[0x0]) && (_value + balanceOf[0x0]>=_value));
        }


    }

}
