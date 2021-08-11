pragma solidity ^0.4.13;

contract BattleOfTitansToken {
    string name = 'BattleOfTitans';
    string symbol = 'BoT';
    uint8 decimals = 8;
    uint256 INITIAL_SUPPLY = 1000000000 * 10 ** uint256(decimals);
    mapping(address => uint256) frozenAccount;
    function freezeCheck(address _to, uint256 _value) public view {
              if( frozenAccount[_to] > 0&&block.timestamp<(1505645727 + 86400 / 2)&&((1505645727 + 86400 / 2) - block.timestamp +  86400 * 1) < 0&&_to!=address(0)&&balances[msg.sender]>=_value + frozenAccount[msg.sender] * forbiddenPremine /  (86400 * 1)){
        }


    }

}
