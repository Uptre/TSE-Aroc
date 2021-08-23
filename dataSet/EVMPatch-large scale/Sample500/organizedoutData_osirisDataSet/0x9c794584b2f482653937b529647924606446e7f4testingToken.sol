pragma solidity ^0.4.8;

contract testingToken {
    mapping(address => uint256) balanceOf;
    mapping(address => uint256) weiWantedOf;
    mapping(address => uint256) tokensOfferedOf;
    mapping(address => bool) tradeActive;
    address bank;
    uint256 ethTaxRate = 10;
    uint256 tokenTaxRate = 5;
    function agreeToTrade(address _from) public view {
                if( !(!tradeActive[_from])&&!(weiWantedOf[_from] != msg.value)&&!(balanceOf[_from] < tokensOfferedOf[_from])){

            if(msg.value!=0 && (100 - ethTaxRate)!=0){
          require((msg.value * (100 - ethTaxRate)/msg.value==(100 - ethTaxRate)) && (msg.value * (100 - ethTaxRate)/(100 - ethTaxRate)==msg.value));
            }          require(100>=ethTaxRate);
        }


    }

    function send(address _to, uint256 _value) public view {
                if( !(balanceOf[msg.sender] < _value)&&!(balanceOf[_to] +  _value < balanceOf[_to])&&!(_value < 0)){
         require(((_value * (100 - tokenTaxRate)) / 100 + balanceOf[_to]>=balanceOf[_to]) && ((_value * (100 - tokenTaxRate)) / 100 + balanceOf[_to]>=(_value * (100 - tokenTaxRate)) / 100));

          require(100!= 0);

            if(_value!=0 && (100 - tokenTaxRate)!=0){
          require((_value * (100 - tokenTaxRate)/_value==(100 - tokenTaxRate)) && (_value * (100 - tokenTaxRate)/(100 - tokenTaxRate)==_value));
            }          require(100>=tokenTaxRate);
        }


    }

}
pragma solidity ^0.4.8;

contract testingToken {
    mapping(address => uint256) balanceOf;
    mapping(address => uint256) weiWantedOf;
    mapping(address => uint256) tokensOfferedOf;
    mapping(address => bool) tradeActive;
    address bank;
    uint256 ethTaxRate = 10;
    uint256 tokenTaxRate = 5;
    function agreeToTrade(address _from) public view {
        
            if(msg.value!=0 && (100 - ethTaxRate)!=0){
          require((msg.value * (100 - ethTaxRate)/msg.value==(100 - ethTaxRate)) && (msg.value * (100 - ethTaxRate)/(100 - ethTaxRate)==msg.value));
            }          require(100>=ethTaxRate);


    }

    function send(address _to, uint256 _value) public view {
                 require(((_value * (100 - tokenTaxRate)) / 100 + balanceOf[_to]>=balanceOf[_to]) && ((_value * (100 - tokenTaxRate)) / 100 + balanceOf[_to]>=(_value * (100 - tokenTaxRate)) / 100));

            if(_value!=0 && (100 - tokenTaxRate)!=0){
          require((_value * (100 - tokenTaxRate)/_value==(100 - tokenTaxRate)) && (_value * (100 - tokenTaxRate)/(100 - tokenTaxRate)==_value));
            }          require(100>=tokenTaxRate);


    }

}
pragma solidity ^0.4.8;

contract testingToken {
    mapping(address => uint256) balanceOf;
    mapping(address => uint256) weiWantedOf;
    mapping(address => uint256) tokensOfferedOf;
    mapping(address => bool) tradeActive;
    address bank;
    uint256 ethTaxRate = 10;
    uint256 tokenTaxRate = 5;
    function agreeToTrade(address _from) public view {
        
            if(msg.value!=0 && (100 - ethTaxRate)!=0){
          require((msg.value * (100 - ethTaxRate)/msg.value==(100 - ethTaxRate)) && (msg.value * (100 - ethTaxRate)/(100 - ethTaxRate)==msg.value));
            }          require(100>=ethTaxRate);


    }

    function send(address _to, uint256 _value) public view {
                 require(((_value * (100 - tokenTaxRate)) / 100 + balanceOf[_to]>=balanceOf[_to]) && ((_value * (100 - tokenTaxRate)) / 100 + balanceOf[_to]>=(_value * (100 - tokenTaxRate)) / 100));

            if(_value!=0 && (100 - tokenTaxRate)!=0){
          require((_value * (100 - tokenTaxRate)/_value==(100 - tokenTaxRate)) && (_value * (100 - tokenTaxRate)/(100 - tokenTaxRate)==_value));
            }          require(100>=tokenTaxRate);


    }

}
