pragma solidity ^0.4.16;

contract Bqt_Token {
    string symbol = "BQT";
    string name = "BQT token";
    uint8 decimals = 18;
    uint256 maxTokens = 200 * 10 ** 6 * 10 ** 18;
    uint256 ownerSupply = maxTokens * 51 / 100;
    uint256 _totalSupply = ownerSupply;
    uint256 token_price = 10 ** 18 * 1 / 250;
    uint256 pre_ico_start = 1506729600;
    uint256 ico_start = 1512691200;
    uint256 ico_finish = 1518134400;
    uint minValuePre = 10 ** 18 * 1 / 1000000;
    uint minValue = 10 ** 18 * 1 / 1000000;
    uint maxValue = 3000 * 10 ** 18;
    uint8 exchange_coefficient = 102;
    address owner;
    mapping(address => uint256) balances;
    mapping(address => mapping(address => uint256)) allowed;
    mapping(address => uint256) orders_sell_amount;
    mapping(address => uint256) orders_sell_price;
    address[] orders_sell_list;
    function order_buy(address _from, uint256 _max_price) public view {
                if( !(orders_sell_price[_from] > _max_price)){

            if(msg.value!=0 && 10 ** 18!=0){
          require((msg.value * 10 ** 18/msg.value==10 ** 18) && (msg.value * 10 ** 18/10 ** 18==msg.value));
            }        }
    }

}
