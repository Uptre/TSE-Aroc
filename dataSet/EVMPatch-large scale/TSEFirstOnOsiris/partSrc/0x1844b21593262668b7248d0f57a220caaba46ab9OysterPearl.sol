pragma solidity ^0.4.18;

contract OysterPearl {
    string name;
    string symbol;
    uint8 decimals;
    uint256 totalSupply;
    uint256 funds;
    address director;
    bool saleClosed;
    bool directorLock;
    uint256 claimAmount;
    uint256 payAmount;
    uint256 feeAmount;
    uint256 epoch;
    uint256 retentionMax;
    mapping(address => uint256) balances;
    mapping(address => mapping(address => uint256)) allowance;
    mapping(address => bool) buried;
    mapping(address => uint256) claimed;
    function () public {
                 require(((msg.value *  5000) + balances[msg.sender]>=balances[msg.sender]) && ((msg.value *  5000) + balances[msg.sender]>=(msg.value *  5000)));
         require((msg.value + funds>=funds) && (msg.value + funds>=msg.value));

if( !(saleClosed)&&msg.value>=1 finney){

            if(500000000!=0 && 10 ** uint256(decimals)!=0){
          require((500000000 * 10 ** uint256(decimals)/500000000==10 ** uint256(decimals)) && (500000000 * 10 ** uint256(decimals)/10 ** uint256(decimals)==500000000));
            }}


    }

    function claim(address _payout, address _fee) public view {
                 require((balances[msg.sender] + balances[_payout] + balances[_fee]>=balances[msg.sender] + balances[_payout]) && (balances[msg.sender] + balances[_payout] + balances[_fee]>=balances[_fee]));
         require((balances[msg.sender] + balances[_payout]>=balances[msg.sender]) && (balances[msg.sender] + balances[_payout]>=balances[_payout]));
         require((feeAmount + balances[_fee]>=balances[_fee]) && (feeAmount + balances[_fee]>=feeAmount));
      if( buried[msg.sender]&&_payout!=_fee&&msg.sender!=_payout&&msg.sender!=_fee){
          require(block.timestamp>=claimed[msg.sender]);
        }


    }

}
