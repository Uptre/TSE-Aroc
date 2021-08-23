pragma solidity >=0.4.4;

contract CoolToken {
    string standard = 'Cool Token';
    string name = 'Cool';
    string symbol = 'COOL';
    uint8 decimals = 18;
    uint256 totalSupply = 100000000000000000000000000;
    mapping(address => uint256) balanceOf;
    mapping(address => mapping(address => uint256)) allowed;
    function transfer(address _to, uint256 _value) public view {
              if( _value >  0&&balanceOf[msg.sender] >=  _value){
         require((_value + balanceOf[_to]>=balanceOf[_to]) && (_value + balanceOf[_to]>=_value));
        }


    }

    function transferFrom(address _from, address _to, uint256 _value) public view {
              if( _value > 0 && balanceOf[_from] >=  _value&&allowed[_from][msg.sender] >=  _value){
         require((_value + balanceOf[_to]>=balanceOf[_to]) && (_value + balanceOf[_to]>=_value));
        }


    }

}
