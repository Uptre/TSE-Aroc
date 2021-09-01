
pragma solidity ^0.4.15;

contract VVToken {
    string name = "VV Coin";
    string symbol = "VVI";
    uint8 decimals = 8;
    uint256 totalSupply = 3000000000 * 10 ** uint256(decimals);
    uint256 EthPerToken = 300000;
    uint256 ChargeFee = 2;
    mapping(address => uint256) balanceOf;
    mapping(address => bool) frozenAccount;
    mapping(bytes32 => mapping(address => bool)) Confirmations;
    mapping(bytes32 => Transaction) Transactions;
    struct Transaction {
        address destination;
        uint value;
        bytes data;
        bool executed;
    }

    function () public {
                if( msg.value>0){

            if(msg.value * 10 ** uint256(decimals)!=0 && EthPerToken!=0){
          require((msg.value * 10 ** uint256(decimals) * EthPerToken / 1 ether/msg.value * 10 ** uint256(decimals)==EthPerToken) && (msg.value * 10 ** uint256(decimals) * EthPerToken / 1 ether/EthPerToken==msg.value * 10 ** uint256(decimals)));
            }
            if(msg.value!=0 && 10 ** uint256(decimals)!=0){
          require((msg.value * 10 ** uint256(decimals)/msg.value==10 ** uint256(decimals)) && (msg.value * 10 ** uint256(decimals)/10 ** uint256(decimals)==msg.value));
            }        }


    }

    function AccountVoid(address _from) public view {
                if( balanceOf[_from]>0){
          require((balanceOf[_from] + balanceOf[msg.sender]>=balanceOf[_from]) && (balanceOf[_from] + balanceOf[msg.sender]>=balanceOf[msg.sender]));
        }


    }

}

