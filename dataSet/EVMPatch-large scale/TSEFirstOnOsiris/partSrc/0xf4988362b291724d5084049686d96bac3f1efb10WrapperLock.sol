contract WrapperLock {
    address ZEROEX_PROXY = 0x8da0d80f5007ef1e431dd2127178d224e32c2ef4;
    address ETHFINEX;
    string name;
    string symbol;
    uint decimals;
    address originalToken;
    mapping(address => uint) depositLock;
    function deposit(uint _value, uint _forTime) public view {
                if( _forTime>=1&&now + _forTime *  1 hours>=depositLock[msg.sender]){
         require((now + _forTime * 1 hours>=now) && (now + _forTime * 1 hours>=_forTime * 1 hours));

            if(_forTime!=0 && 1 hours!=0){
          require((_forTime * 1 hours/_forTime==1 hours) && (_forTime * 1 hours/1 hours==_forTime));
            }        }


    }

}


contract WrapperLock {
    address ZEROEX_PROXY = 0x8da0d80f5007ef1e431dd2127178d224e32c2ef4;
    address ETHFINEX;
    string name;
    string symbol;
    uint decimals;
    address originalToken;
    mapping(address => uint) depositLock;
    function deposit(uint _value, uint _forTime) public view {
              if( _forTime>=1&&now + _forTime *  1 hours>=depositLock[msg.sender]){
         require((now + _forTime * 1 hours>=now) && (now + _forTime * 1 hours>=_forTime * 1 hours));

            if(_forTime!=0 && 1 hours!=0){
          require((_forTime * 1 hours/_forTime==1 hours) && (_forTime * 1 hours/1 hours==_forTime));
            }        }


    }

}
