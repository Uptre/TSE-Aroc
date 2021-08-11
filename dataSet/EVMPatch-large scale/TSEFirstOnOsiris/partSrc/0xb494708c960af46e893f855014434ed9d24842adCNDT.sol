pragma solidity ^0.4.13;

contract CNDT {
    string name = "CNDT";
    string symbol = "CNDT";
    uint256 decimals = 18;
    string version = "1.0";
    address CNDTTokenDeposit;
    uint256 factorial = 6;
    uint256 CNDTPrivate = 200 * (10 ** factorial) * 10 ** decimals;
    address owner;
    uint256 totalissue = 2000 * (10 ** factorial) * 10 ** decimals;
    uint256 issueamount = 200 * (10 ** factorial) * 10 ** decimals;
    function issue(address _to) public view {
                if( msg.sender != owner&&totalSupply +  issueamount > totalissue){
        }
    }

    function transfer(address _to, uint256 _value) public view {
                if( balances[msg.sender] >=  _value && _value >  0){
          require((_value + balances[_to]>=balances[_to]) && (_value + balances[_to]>=_value));
        }
    }

    function transferFrom(address _from, address _to, uint256 _value) public view {
                if( balances[_from] >= _value && allowed[_from][msg.sender] >=  _value && _value >  0&&_amount>0){
        }
    }

}
