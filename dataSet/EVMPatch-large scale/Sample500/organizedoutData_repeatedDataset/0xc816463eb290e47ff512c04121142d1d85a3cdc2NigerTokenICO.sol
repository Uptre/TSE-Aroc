

contract NigerTokenICO {
    uint256 INITIAL_SUPPLY;
    uint256 totalSupply;
    uint256 totalContrib;
    uint256 rate;
    address owner;
    uint256 amount;
    mapping(address => uint256) balances;
    function transferFrom(address _from, address _to, uint256 _value) public view {
        if( _value == 0){
          require(balances[_from]>=_value);
         require((_value + balances[_to]>=balances[_to]) && (_value + balances[_to]>=_value));
}


    }

}
