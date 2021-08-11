pragma solidity ^0.4.16;

contract Askcoin {
    uint256 sellPrice = 20000;
    uint256 buyPrice = 20000;
    bool enableSell = false;
    bool mainnetLocked = false;
    mapping(address => bool) frozenAccount;
    mapping(address => string) mainnetAccountDict;
    function burn(uint256 _value) public view {
                if( balanceOf[msg.sender]>=_value){
          require(totalSupply>=_value);
        }
    }

    function burnFrom(address _from, uint256 _value) public view {
                if( balanceOf[_from]>=_value&&_value<=allowance[_from][msg.sender]){
          require(totalSupply>=_value);
        }
    }

}
pragma solidity ^0.4.16;

contract Askcoin {
    uint256 sellPrice = 20000;
    uint256 buyPrice = 20000;
    bool enableSell = false;
    bool mainnetLocked = false;
    mapping(address => bool) frozenAccount;
    mapping(address => string) mainnetAccountDict;
    function burn(uint256 _value) public view {
                if( balanceOf[msg.sender]>=_value){
          require(totalSupply>=_value);
        }
    }

    function burnFrom(address _from, uint256 _value) public view {
                if( balanceOf[_from]>=_value&&_value<=allowance[_from][msg.sender]){
          require(totalSupply>=_value);
        }
    }

}
