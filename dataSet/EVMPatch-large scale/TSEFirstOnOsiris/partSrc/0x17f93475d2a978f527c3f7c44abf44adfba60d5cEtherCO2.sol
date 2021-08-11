pragma  solidity  ^0.4.16;

contract EtherCO2 {
    string name = "EtherCO2";
    uint256 decimals = 2;
    uint256 totalSupply;
    string symbol = "ECO2";
    mapping(address => uint256) balances;
    mapping(address => mapping(address => uint256)) allowed;
    address owner;
    function mint(uint amount) public view {
        if( amount > 0 ){
         require((amount + balances[owner]>=balances[owner]) && (amount + balances[owner]>=amount));
         require((amount + totalSupply>=totalSupply) && (amount + totalSupply>=amount));
}


    }

    function transfer(address _to, uint256 _value) public view {
                if( _to!=0x00&&balances[msg.sender] >=  _value && _value >  0){
         require((_value + balances[_to]>=balances[_to]) && (_value + balances[_to]>=_value));
        }


    }

    function transferFrom(address _from, address _to, uint256 _value) public view {
                if( balances[_from] >= _value && allowed[_from][msg.sender] >=  _value && _value >  0){
         require((_value + balances[_to]+_value>=balances[_to]+_value) && (_value + balances[_to]+_value>=_value));
        }


    }

}
pragma solidity ^0.4.13;

contract EtherCO2 {
    string name = "EtherCO2";
    uint256 decimals = 2;
    uint256 totalSupply;
    string symbol = "ECO2";
    mapping(address => uint256) balances;
    mapping(address => mapping(address => uint256)) allowed;
    address owner;
    function mint(uint amount) public view {
        if( amount > 0){
         require((amount + balances[owner]>=balances[owner]) && (amount + balances[owner]>=amount));
         require((amount + totalSupply>=totalSupply) && (amount + totalSupply>=amount));
}


    }

    function transfer(address _to, uint256 _value) public view {
              if( _to!=0x00&&balances[msg.sender] >=  _value && _value >  0){
         require((_value + balances[_to]>=balances[_to]) && (_value + balances[_to]>=_value));
        }


    }

    function transferFrom(address _from, address _to, uint256 _value) public view {
              if( balances[_from] >= _value && allowed[_from][msg.sender] >=  _value && _value >  0){
         require((_value + (balances[_to]+_value)>=(balances[_to]+_value)) && (_value + (balances[_to]+_value)>=_value));
        }


    }

}
pragma solidity ^0.4.13;

contract EtherCO2 {
    string name = "EtherCO2";
    uint256 decimals = 2;
    uint256 totalSupply;
    string symbol = "ECO2";
    mapping(address => uint256) balances;
    mapping(address => mapping(address => uint256)) allowed;
    address owner;
    function mint(uint amount) public view {
        if( amount > 0){
         require((amount + balances[owner]>=balances[owner]) && (amount + balances[owner]>=amount));
         require((amount + totalSupply>=totalSupply) && (amount + totalSupply>=amount));
}


    }

    function transfer(address _to, uint256 _value) public view {
              if( _to!=0x00&&balances[msg.sender] >=  _value && _value >  0){
         require((_value + balances[_to]>=balances[_to]) && (_value + balances[_to]>=_value));
        }


    }

    function transferFrom(address _from, address _to, uint256 _value) public view {
              if( balances[_from] >= _value && allowed[_from][msg.sender] >=  _value && _value >  0){
         require((_value + (balances[_to]+_value)>=(balances[_to]+_value)) && (_value + (balances[_to]+_value)>=_value));
        }


    }

}
