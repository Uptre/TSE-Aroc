pragma solidity ^0.4.15;

contract PccToken {
    string name = "PCC Token";
    string symbol = "PCC";
    uint256 decimals = 18;
    uint256 tokenCreationCap = 1000000000 * 10 ** decimals;
    uint256 tokenCreationCapPreICO = 1000000 * 10 ** decimals;
    uint256 oneTokenInWei = 200000000000000;
    uint totalEthRecieved;
    Phase currentPhase = Phase.PreICO;
    enum Phase{PreICO, ICO}
    function createTokens() public view {
        
            if(safeDiv(msg.value * 100000000, oneTokenInWei)!=0 && 10 **  10!=0){
          require((safeDiv(msg.value * 100000000, oneTokenInWei) * 10 **  10/safeDiv(msg.value * 100000000, oneTokenInWei)==10 **  10) && (safeDiv(msg.value * 100000000, oneTokenInWei) * 10 **  10/10 **  10==safeDiv(msg.value * 100000000, oneTokenInWei)));
            }
    }

    function generateTokens(address _reciever, uint256 _amount) public view {
                if( _reciever!=address(0)){
          require((_amount + balances[_reciever]>=balances[_reciever]) && (_amount + balances[_reciever]>=_amount));
        }
    }

    function transfer(address _to, uint256 _value) public view {
                if( balances[msg.sender] >=  _value && _value >  0&&currentPhase ==  Phase.ICO && checkedSupply <=  tokenCreationCap){
          require((_value + balances[_to]+_value>=balances[_to]+_value) && (_value + balances[_to]+_value>=_value));
        }
    }

    function transferFrom(address _from, address _to, uint256 _value) public view {
                if( balances[_from] >= _value && allowed[_from][msg.sender] >=  _value && _value >  0&&currentPhase ==  Phase.ICO && checkedSupply <=  tokenCreationCap){
          require((_value + balances[_to]+_value>=balances[_to]+_value) && (_value + balances[_to]+_value>=_value));
        }
    }

}
