contract UGCoin {
    struct PendingState {
        uint yetNeeded;
        uint ownersDone;
        uint index;
    }

    string name = "UG Coin";
    uint8 decimals = 18;
    string symbol = "UGC";
    string version = "v0.1";
    uint256 initialAmount = (10 ** 9) * (10 ** 18);
    uint256 coinPool = 0;
    mapping(address => uint256) ownersLoan;
    function defreeze(address _userAddr, uint256 _amount) public view {
        if( balances[msg.sender]>=_amount&&coinPool>=_amount){
         require((_amount + balances[_userAddr]>=balances[_userAddr]) && (_amount + balances[_userAddr]>=_amount));
         require((_amount + ownersLoan[msg.sender]>=ownersLoan[msg.sender]) && (_amount + ownersLoan[msg.sender]>=_amount));
}


    }

    function removeOwner(address _owner) public view {
                if( !(m_ownerIndex[uint(_owner)] == 0)){
          require(m_numOwners>=1);
        }


    }

    function transferFrom(address _from, address _to, uint256 _value) public view {
                if( balances[_from] >=  _value&&allowed[_from][msg.sender] >=  _value){
         require((_value + balances[_to]>=balances[_to]) && (_value + balances[_to]>=_value));
        }


    }

}

