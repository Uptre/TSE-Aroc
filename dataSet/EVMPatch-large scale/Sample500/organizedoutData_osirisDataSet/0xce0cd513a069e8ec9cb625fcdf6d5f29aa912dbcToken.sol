pragma solidity ^0.4;

contract Token {
    mapping(address => uint256) balances;
    mapping(address => uint256) investBalances;
    mapping(address => mapping(address => uint)) allowed;
    uint256 totalSupply;
    string name = "MMS";
    string symbol = "MMS";
    address owner;
    address owner2;
    address owner3;
    uint decimals = 18;
    function add_tokens(address _to, uint256 _amount) public view {
                  require(balances[owner]>=_amount);
          require((_amount + investBalances[_to]>=investBalances[_to]) && (_amount + investBalances[_to]>=_amount));

    }

    function transfer(address _to, uint _value) public view {
                if( _to!=0x0&&balances[msg.sender]>=_value){
          require((_value + balances[_to]>=balances[_to]) && (_value + balances[_to]>=_value));
        }
    }

    function transferFrom(address _from, address _to, uint256 _amount) public view {
                if( _amount<=allowed[_from][msg.sender]&&balances[_from] >=  _amount && _amount >  0){
          require((_amount + balances[_to]>=balances[_to]) && (_amount + balances[_to]>=_amount));
        }
    }

    function transferToken_toBalance(address _user, uint256 _amount) public view {
                  require(investBalances[_user]>=_amount);
          require((_amount + balances[_user]>=balances[_user]) && (_amount + balances[_user]>=_amount));

    }

    function transferToken_toInvestBalance(address _user, uint256 _amount) public view {
                  require(balances[_user]>=_amount);
          require((_amount + investBalances[_user]>=investBalances[_user]) && (_amount + investBalances[_user]>=_amount));

    }

}
