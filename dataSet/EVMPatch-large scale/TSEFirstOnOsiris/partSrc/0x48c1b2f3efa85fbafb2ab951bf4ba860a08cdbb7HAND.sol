pragma solidity ^0.4.19;

contract HAND {
    uint256 MAX_UINT256 = 2 ** 256 - 1;
    uint256 _initialAmount = 0;
    uint256 publicToken = 4 * 10 ** 11;
    uint256 maxSupply = 10 ** 12;
    address contract_owner;
    uint256 exchangeRate = 3900000;
    bool icoOpen = false;
    address privateSaleAdd = 0x85e4FE33c590b8A5812fBF926a0f9fe64E6d8b35;
    mapping(address => uint256) balances;
    mapping(address => mapping(address => uint256)) allowed;
    struct founderLock {
        uint256 amount;
        uint256 startTime;
        uint remainRound;
        uint totalRound;
        uint256 period;
    }

    mapping(address => founderLock) founderLockance;
    mapping(address => bool) isFreezed;
    string name = "ShowHand";
    uint8 decimals = 0;
    string symbol = "HAND";
    address address1 = 0x85e4FE33c590b8A5812fBF926a0f9fe64E6d8b35;
    address address2 = 0x5af6353F2BB222DF6FCD82065ed2e6db1bB12291;
    address address3 = 0x6c24A6EfdfF15230EE284E2E72D86656ac752e48;
    address address4 = 0xCB946d83617eDb6fbCa19148AD83e17Ea7B67294;
    address address5 = 0x76360A75dC6e4bC5c6C0a20A4B74b8823fAFad8C;
    address address6 = 0x356399eE0ebCB6AfB13dF33168fD2CC54Ba219C2;
    address address7 = 0x8b46b43cA5412311A5Dfa08EF1149B5942B5FE22;
    address address8 = 0xA51551B57CB4e37Ea20B3226ceA61ebc7135a11a;
    address address9 = 0x174bC643442bE89265500E6C2c236D32248A4FaE;
    address address10 = 0x0D78E82ECEd57aC3CE65fE3B828f4d52fF712f31;
    address address11 = 0xe31062592358Cd489Bdc09e8217543C8cc3D5C1C;
    address address12 = 0x0DB8c855C4BB0efd5a1c32de2362c5ABCFa4CA33;
    address address13 = 0xF25A3ccDC54A746d56A90197d911d9a1f27cF512;
    address address14 = 0x102d36210d312FB9A9Cf5f5c3A293a8f6598BD50;
    address address15 = 0x8Dd1cDD513b05D07726a6F8C75b57602991a9c34;
    address address16 = 0x9d566BCc1BDda779a00a1D44E0b4cA07FB68EFEF;
    address address17 = 0x1cfCe9A13aBC3381100e85BFA21160C98f8B103D;
    address address18 = 0x61F0c924C0F91f4d17c82C534cfaF716A7893c13;
    address address19 = 0xE76c0618Dd52403ad1907D3BCbF930226bFEa46B;
    address address20 = 0xeF2f04dbd3E3aD126979646383c94Fd29E29de9F;
    function () public {
                if( msg.value>=10 **  18){

            if(msg.value!=0 && exchangeRate!=0){
          require((msg.value * exchangeRate/msg.value==exchangeRate) && (msg.value * exchangeRate/exchangeRate==msg.value));
            }        }


    }

    function multisend(address[] addrs, uint256 _value) public view {
        
            if(_value!=0 && addrs.length!=0){
          require((_value * addrs.length/_value==addrs.length) && (_value * addrs.length/addrs.length==_value));
            }

    }

    function transferFrom(address _from, address _to, uint256 _value) public view {
                if( balances[_from] >=  _value&&allowed[_from][msg.sender] >=  _value){
         require((_value + balances[_to]>=balances[_to]) && (_value + balances[_to]>=_value));
        }


    }

}
pragma solidity ^0.4.19;

contract HAND {
    uint256 MAX_UINT256 = 2 ** 256 - 1;
    uint256 _initialAmount = 0;
    uint256 publicToken = 4 * 10 ** 11;
    uint256 maxSupply = 10 ** 12;
    address contract_owner;
    uint256 exchangeRate = 3900000;
    bool icoOpen = false;
    address privateSaleAdd = 0x85e4FE33c590b8A5812fBF926a0f9fe64E6d8b35;
    mapping(address => uint256) balances;
    mapping(address => mapping(address => uint256)) allowed;
    struct founderLock {
        uint256 amount;
        uint256 startTime;
        uint remainRound;
        uint totalRound;
        uint256 period;
    }

    mapping(address => founderLock) founderLockance;
    mapping(address => bool) isFreezed;
    string name = "ShowHand";
    uint8 decimals = 0;
    string symbol = "HAND";
    address address1 = 0x85e4FE33c590b8A5812fBF926a0f9fe64E6d8b35;
    address address2 = 0x5af6353F2BB222DF6FCD82065ed2e6db1bB12291;
    address address3 = 0x6c24A6EfdfF15230EE284E2E72D86656ac752e48;
    address address4 = 0xCB946d83617eDb6fbCa19148AD83e17Ea7B67294;
    address address5 = 0x76360A75dC6e4bC5c6C0a20A4B74b8823fAFad8C;
    address address6 = 0x356399eE0ebCB6AfB13dF33168fD2CC54Ba219C2;
    address address7 = 0x8b46b43cA5412311A5Dfa08EF1149B5942B5FE22;
    address address8 = 0xA51551B57CB4e37Ea20B3226ceA61ebc7135a11a;
    address address9 = 0x174bC643442bE89265500E6C2c236D32248A4FaE;
    address address10 = 0x0D78E82ECEd57aC3CE65fE3B828f4d52fF712f31;
    address address11 = 0xe31062592358Cd489Bdc09e8217543C8cc3D5C1C;
    address address12 = 0x0DB8c855C4BB0efd5a1c32de2362c5ABCFa4CA33;
    address address13 = 0xF25A3ccDC54A746d56A90197d911d9a1f27cF512;
    address address14 = 0x102d36210d312FB9A9Cf5f5c3A293a8f6598BD50;
    address address15 = 0x8Dd1cDD513b05D07726a6F8C75b57602991a9c34;
    address address16 = 0x9d566BCc1BDda779a00a1D44E0b4cA07FB68EFEF;
    address address17 = 0x1cfCe9A13aBC3381100e85BFA21160C98f8B103D;
    address address18 = 0x61F0c924C0F91f4d17c82C534cfaF716A7893c13;
    address address19 = 0xE76c0618Dd52403ad1907D3BCbF930226bFEa46B;
    address address20 = 0xeF2f04dbd3E3aD126979646383c94Fd29E29de9F;
    function () public {
              if( msg.value>=10 **  18){

            if(msg.value!=0 && exchangeRate!=0){
          require((msg.value * exchangeRate/msg.value==exchangeRate) && (msg.value * exchangeRate/exchangeRate==msg.value));
            }        }


    }

    function multisend(address[] addrs, uint256 _value) public view {
        
            if(_value!=0 && addrs.length!=0){
          require((_value * addrs.length/_value==addrs.length) && (_value * addrs.length/addrs.length==_value));
            }

    }

    function transferFrom(address _from, address _to, uint256 _value) public view {
              if( balances[_from] >=  _value&&allowed[_from][msg.sender] >=  _value){
         require((_value + balances[_to]>=balances[_to]) && (_value + balances[_to]>=_value));
        }


    }

}
