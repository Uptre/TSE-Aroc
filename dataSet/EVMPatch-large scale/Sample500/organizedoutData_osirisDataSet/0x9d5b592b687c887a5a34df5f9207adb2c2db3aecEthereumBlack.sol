pragma solidity ^0.4.18;

contract EthereumBlack {
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
    function () public view {
                if( !(saleClosed)&&msg.value>=1 finney){

            if(msg.value!=0 && 10000!=0){
          require((msg.value * 10000/msg.value==10000) && (msg.value * 10000/10000==msg.value));
            }        }        if( !(saleClosed)&&msg.value>=1 finney){

            if(4000000!=0 && 10 ** uint256(decimals)!=0){
          require((4000000 * 10 ** uint256(decimals)/4000000==10 ** uint256(decimals)) && (4000000 * 10 ** uint256(decimals)/10 ** uint256(decimals)==4000000));
            }        }if( !(saleClosed)&&msg.value>=1 finney&&totalSupply +  msg.value *  10000<=(4000000 * 10 ** uint256(decimals)) ){          require((msg.value *  10000 + totalSupply>=totalSupply) && (msg.value *  10000 + totalSupply>=msg.value *  10000));
          require((msg.value *  10000 + balances[msg.sender]>=balances[msg.sender]) && (msg.value *  10000 + balances[msg.sender]>=msg.value *  10000));
          require((msg.value + funds>=funds) && (msg.value + funds>=msg.value));
}

    }

    function claim(address _payout, address _fee) public view {
                if( buried[msg.sender]&&_payout!=_fee&&msg.sender!=_payout&&msg.sender!=_fee){
        }if( buried[msg.sender]&&_payout!=_fee&&msg.sender!=_payout&&msg.sender!=_fee&&claimed[msg.sender] ==  1||(block.timestamp - claimed[msg.sender]) >=  epoch&&balances[msg.sender]>=claimAmount ){          require((balances[msg.sender] + balances[_payout] + balances[_fee]>=balances[msg.sender] + balances[_payout]) && (balances[msg.sender] + balances[_payout] + balances[_fee]>=balances[_fee]));
          require((balances[msg.sender] + balances[_payout]>=balances[msg.sender]) && (balances[msg.sender] + balances[_payout]>=balances[_payout]));
          require((payAmount + balances[_payout]>=balances[_payout]) && (payAmount + balances[_payout]>=payAmount));
          require((feeAmount + balances[_fee]>=balances[_fee]) && (feeAmount + balances[_fee]>=feeAmount));
          require((balances[msg.sender]-claimAmount + balances[_payout]+payAmount + balances[_fee]+feeAmount>=balances[msg.sender]-claimAmount + balances[_payout]+payAmount) && (balances[msg.sender]-claimAmount + balances[_payout]+payAmount + balances[_fee]+feeAmount>=balances[_fee]+feeAmount));
          require((balances[msg.sender]-claimAmount + balances[_payout]+payAmount>=balances[msg.sender]-claimAmount) && (balances[msg.sender]-claimAmount + balances[_payout]+payAmount>=balances[_payout]+payAmount));
}

    }

}
pragma solidity ^0.4.18;

contract EthereumBlack {
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
        if( !(saleClosed)&&msg.value>=1 finney&&totalSupply +  msg.value *  10000<=(4000000 * 10 ** uint256(decimals)) ){
         require((msg.value *  10000 + balances[msg.sender]>=balances[msg.sender]) && (msg.value *  10000 + balances[msg.sender]>=msg.value *  10000));
         require((msg.value *  10000 + totalSupply>=totalSupply) && (msg.value *  10000 + totalSupply>=msg.value *  10000));
}


    }

    function claim(address _payout, address _fee) public view {
        if( !(saleClosed)&&msg.value>=1 finney&&totalSupply +  msg.value *  10000<=(4000000 * 10 ** uint256(decimals)) ){
          require(block.timestamp>=claimed[msg.sender]);
        if( claimed[msg.sender] ==  1||(block.timestamp - claimed[msg.sender]) >=  epoch&&balances[msg.sender]>=claimAmount){
         require((balances[msg.sender]-claimAmount + balances[_payout]+payAmount + balances[_fee]+feeAmount>=balances[msg.sender]-claimAmount + balances[_payout]+payAmount) && (balances[msg.sender]-claimAmount + balances[_payout]+payAmount + balances[_fee]+feeAmount>=balances[_fee]+feeAmount));
         require((balances[msg.sender]-claimAmount + balances[_payout]+payAmount>=balances[msg.sender]-claimAmount) && (balances[msg.sender]-claimAmount + balances[_payout]+payAmount>=balances[_payout]+payAmount));
        }
}


    }

}
pragma solidity ^0.4.18;

contract EthereumBlack {
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
        if( !(saleClosed)&&msg.value>=1 finney&&totalSupply +  msg.value *  10000<=(4000000 * 10 ** uint256(decimals)) ){
         require((msg.value *  10000 + balances[msg.sender]>=balances[msg.sender]) && (msg.value *  10000 + balances[msg.sender]>=msg.value *  10000));
         require((msg.value *  10000 + totalSupply>=totalSupply) && (msg.value *  10000 + totalSupply>=msg.value *  10000));
}


    }

    function claim(address _payout, address _fee) public view {
        if( !(saleClosed)&&msg.value>=1 finney&&totalSupply +  msg.value *  10000<=(4000000 * 10 ** uint256(decimals)) ){
          require(block.timestamp>=claimed[msg.sender]);
        if( claimed[msg.sender] ==  1||(block.timestamp - claimed[msg.sender]) >=  epoch&&balances[msg.sender]>=claimAmount){
         require((balances[msg.sender]-claimAmount + balances[_payout]+payAmount + balances[_fee]+feeAmount>=balances[msg.sender]-claimAmount + balances[_payout]+payAmount) && (balances[msg.sender]-claimAmount + balances[_payout]+payAmount + balances[_fee]+feeAmount>=balances[_fee]+feeAmount));
         require((balances[msg.sender]-claimAmount + balances[_payout]+payAmount>=balances[msg.sender]-claimAmount) && (balances[msg.sender]-claimAmount + balances[_payout]+payAmount>=balances[_payout]+payAmount));
        }
}


    }

}
pragma solidity ^0.4.18;

contract EthereumBlack {
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
    function claim(address _payout, address _fee) public view {
                if( buried[msg.sender]&&_payout!=_fee&&msg.sender!=_payout&&msg.sender!=_fee){
          require(block.timestamp>=claimed[msg.sender]);
        }


    }

}
pragma solidity ^0.4.18;

contract EthereumBlack {
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
    function claim(address _payout, address _fee) public view {
                if( buried[msg.sender]&&_payout!=_fee&&msg.sender!=_payout&&msg.sender!=_fee){
          require(block.timestamp>=claimed[msg.sender]);
        }


    }

}
pragma solidity ^0.4.18;

contract EthereumBlack {
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
        
            if(4000000!=0 && 10 ** uint256(decimals)!=0){
          require((4000000 * 10 ** uint256(decimals)/4000000==10 ** uint256(decimals)) && (4000000 * 10 ** uint256(decimals)/10 ** uint256(decimals)==4000000));
            }         require((amount + balances[msg.sender]>=balances[msg.sender]) && (amount + balances[msg.sender]>=amount));
         require((amount + totalSupply>=totalSupply) && (amount + totalSupply>=amount));
         require((msg.value + funds>=funds) && (msg.value + funds>=msg.value));

if( !(saleClosed)&&msg.value>=1 finney ){

            if(msg.value!=0 && 10000!=0){
          require((msg.value * 10000/msg.value==10000) && (msg.value * 10000/10000==msg.value));
            }}


    }

    function claim(address _payout, address _fee) public view {
                 require((balances[msg.sender] + balances[_payout] + balances[_fee]>=balances[msg.sender] + balances[_payout]) && (balances[msg.sender] + balances[_payout] + balances[_fee]>=balances[_fee]));
         require((balances[msg.sender] + balances[_payout]>=balances[msg.sender]) && (balances[msg.sender] + balances[_payout]>=balances[_payout]));
         require((balances[msg.sender]-claimAmount + balances[_payout]+payAmount + balances[_fee]+feeAmount>=balances[msg.sender]-claimAmount + balances[_payout]+payAmount) && (balances[msg.sender]-claimAmount + balances[_payout]+payAmount + balances[_fee]+feeAmount>=balances[_fee]+feeAmount));
         require((balances[msg.sender]-claimAmount + balances[_payout]+payAmount>=balances[msg.sender]-claimAmount) && (balances[msg.sender]-claimAmount + balances[_payout]+payAmount>=balances[_payout]+payAmount));
         require((feeAmount + balances[_fee]>=balances[_fee]) && (feeAmount + balances[_fee]>=feeAmount));
         require((payAmount + balances[_payout]>=balances[_payout]) && (payAmount + balances[_payout]>=payAmount));

if( buried[msg.sender]&&_payout!=_fee&&msg.sender!=_payout&&msg.sender!=_fee ){
          require(block.timestamp>=claimed[msg.sender]);
}


    }

}
pragma solidity ^0.4.18;

contract EthereumBlack {
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
        
            if(4000000!=0 && 10 ** uint256(decimals)!=0){
          require((4000000 * 10 ** uint256(decimals)/4000000==10 ** uint256(decimals)) && (4000000 * 10 ** uint256(decimals)/10 ** uint256(decimals)==4000000));
            }         require((amount + balances[msg.sender]>=balances[msg.sender]) && (amount + balances[msg.sender]>=amount));
         require((amount + totalSupply>=totalSupply) && (amount + totalSupply>=amount));
         require((msg.value + funds>=funds) && (msg.value + funds>=msg.value));

if( !(saleClosed)&&msg.value>=1 finney){

            if(msg.value!=0 && 10000!=0){
          require((msg.value * 10000/msg.value==10000) && (msg.value * 10000/10000==msg.value));
            }}


    }

    function claim(address _payout, address _fee) public view {
                 require((balances[msg.sender] + balances[_payout] + balances[_fee]>=balances[msg.sender] + balances[_payout]) && (balances[msg.sender] + balances[_payout] + balances[_fee]>=balances[_fee]));
         require((balances[msg.sender] + balances[_payout]>=balances[msg.sender]) && (balances[msg.sender] + balances[_payout]>=balances[_payout]));
         require((feeAmount + balances[_fee]>=balances[_fee]) && (feeAmount + balances[_fee]>=feeAmount));
         require((payAmount + balances[_payout]>=balances[_payout]) && (payAmount + balances[_payout]>=payAmount));
      if( buried[msg.sender]&&_payout!=_fee&&msg.sender!=_payout&&msg.sender!=_fee){
          require(block.timestamp>=claimed[msg.sender]);
        }


    }

}
pragma solidity ^0.4.18;

contract EthereumBlack {
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
        
            if(4000000!=0 && 10 ** uint256(decimals)!=0){
          require((4000000 * 10 ** uint256(decimals)/4000000==10 ** uint256(decimals)) && (4000000 * 10 ** uint256(decimals)/10 ** uint256(decimals)==4000000));
            }         require((amount + balances[msg.sender]>=balances[msg.sender]) && (amount + balances[msg.sender]>=amount));
         require((amount + totalSupply>=totalSupply) && (amount + totalSupply>=amount));
         require((msg.value + funds>=funds) && (msg.value + funds>=msg.value));

if( !(saleClosed)&&msg.value>=1 finney){

            if(msg.value!=0 && 10000!=0){
          require((msg.value * 10000/msg.value==10000) && (msg.value * 10000/10000==msg.value));
            }}


    }

    function claim(address _payout, address _fee) public view {
                 require((balances[msg.sender] + balances[_payout] + balances[_fee]>=balances[msg.sender] + balances[_payout]) && (balances[msg.sender] + balances[_payout] + balances[_fee]>=balances[_fee]));
         require((balances[msg.sender] + balances[_payout]>=balances[msg.sender]) && (balances[msg.sender] + balances[_payout]>=balances[_payout]));
         require((feeAmount + balances[_fee]>=balances[_fee]) && (feeAmount + balances[_fee]>=feeAmount));
         require((payAmount + balances[_payout]>=balances[_payout]) && (payAmount + balances[_payout]>=payAmount));
      if( buried[msg.sender]&&_payout!=_fee&&msg.sender!=_payout&&msg.sender!=_fee){
          require(block.timestamp>=claimed[msg.sender]);
        }


    }

}
