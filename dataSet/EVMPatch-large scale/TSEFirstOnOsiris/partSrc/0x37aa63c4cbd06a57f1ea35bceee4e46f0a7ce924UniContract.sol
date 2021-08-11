pragma  solidity  ^0.4.16;

contract UniContract {
    string name = "SaveUNICOINs";
    string symbol = "UCN";
    uint256 decimals = 0;
    address multisig;
    address founder;
    uint start;
    uint end;
    uint launch;
    uint256 PRICE = 217135;
    uint256 OVERALLSOLD = 3148890;
    uint256 MAXTOKENSOLD = 85000000;
    uint256 PRICE_PRESALE = 300000;
    uint256 FACTOR_PRESALE = 38;
    uint256 RANGESTART_PRESALE = 0;
    uint256 RANGEEND_PRESALE = 10000000;
    uint256 PRICE_1 = 30000;
    uint256 FACTOR_1 = 460;
    uint256 RANGESTART_1 = 10000001;
    uint256 RANGEEND_1 = 10100000;
    uint256 PRICE_2 = 29783;
    uint256 FACTOR_2 = 495;
    uint256 RANGESTART_2 = 10100001;
    uint256 RANGEEND_2 = 11000000;
    uint256 PRICE_3 = 27964;
    uint256 FACTOR_3 = 580;
    uint256 RANGESTART_3 = 11000001;
    uint256 RANGEEND_3 = 15000000;
    uint256 PRICE_4 = 21068;
    uint256 FACTOR_4 = 800;
    uint256 RANGESTART_4 = 15000001;
    uint256 RANGEEND_4 = 20000000;
    uint256 PRICE_5 = 14818;
    uint256 FACTOR_5 = 1332;
    uint256 RANGESTART_5 = 20000001;
    uint256 RANGEEND_5 = 30000000;
    uint256 PRICE_6 = 7310;
    uint256 FACTOR_6 = 2700;
    uint256 RANGESTART_6 = 30000001;
    uint256 RANGEEND_6 = 40000000;
    uint256 PRICE_7 = 3607;
    uint256 FACTOR_7 = 5450;
    uint256 RANGESTART_7 = 40000001;
    uint256 RANGEEND_7 = 50000000;
    uint256 PRICE_8 = 1772;
    uint256 FACTOR_8 = 11000;
    uint256 RANGESTART_8 = 50000001;
    uint256 RANGEEND_8 = 60000000;
    uint256 PRICE_9 = 863;
    uint256 FACTOR_9 = 23200;
    uint256 RANGESTART_9 = 60000001;
    uint256 RANGEEND_9 = 70000000;
    uint256 PRICE_10 = 432;
    uint256 FACTOR_10 = 46000;
    uint256 RANGESTART_10 = 70000001;
    uint256 RANGEEND_10 = 80000000;
    uint256 PRICE_11 = 214;
    uint256 FACTOR_11 = 78000;
    uint256 RANGESTART_11 = 80000001;
    uint256 RANGEEND_11 = 85000000;
    uint256 UniCoinSize = 0;
    struct MessageQueue {
        string message;
        string from;
        uint expireTimestamp;
        uint startTimestamp;
        address sender;
    }

    uint256 maxSpendToken = 3600;
    MessageQueue[] mQueue;
    function add(uint256 a, uint256 b) public view {
                 require((a + b>=a) && (a + b>=b));


    }

    function div(uint256 a, uint256 b) public view {
        
          require(b!= 0);


    }

    function mul(uint256 a, uint256 b) public view {
        
            if(a!=0 && b!=0){
          require((a * b/a==b) && (a * b/b==a));
            }

    }

    function sub(uint256 a, uint256 b) public view {
                  require(a>=b);


    }

}
pragma solidity ^0.4.11;

contract UniContract {
    string name = "SaveUNICOINs";
    string symbol = "UCN";
    uint256 decimals = 0;
    address multisig;
    address founder;
    uint start;
    uint end;
    uint launch;
    uint256 PRICE = 217135;
    uint256 OVERALLSOLD = 3148890;
    uint256 MAXTOKENSOLD = 85000000;
    uint256 PRICE_PRESALE = 300000;
    uint256 FACTOR_PRESALE = 38;
    uint256 RANGESTART_PRESALE = 0;
    uint256 RANGEEND_PRESALE = 10000000;
    uint256 PRICE_1 = 30000;
    uint256 FACTOR_1 = 460;
    uint256 RANGESTART_1 = 10000001;
    uint256 RANGEEND_1 = 10100000;
    uint256 PRICE_2 = 29783;
    uint256 FACTOR_2 = 495;
    uint256 RANGESTART_2 = 10100001;
    uint256 RANGEEND_2 = 11000000;
    uint256 PRICE_3 = 27964;
    uint256 FACTOR_3 = 580;
    uint256 RANGESTART_3 = 11000001;
    uint256 RANGEEND_3 = 15000000;
    uint256 PRICE_4 = 21068;
    uint256 FACTOR_4 = 800;
    uint256 RANGESTART_4 = 15000001;
    uint256 RANGEEND_4 = 20000000;
    uint256 PRICE_5 = 14818;
    uint256 FACTOR_5 = 1332;
    uint256 RANGESTART_5 = 20000001;
    uint256 RANGEEND_5 = 30000000;
    uint256 PRICE_6 = 7310;
    uint256 FACTOR_6 = 2700;
    uint256 RANGESTART_6 = 30000001;
    uint256 RANGEEND_6 = 40000000;
    uint256 PRICE_7 = 3607;
    uint256 FACTOR_7 = 5450;
    uint256 RANGESTART_7 = 40000001;
    uint256 RANGEEND_7 = 50000000;
    uint256 PRICE_8 = 1772;
    uint256 FACTOR_8 = 11000;
    uint256 RANGESTART_8 = 50000001;
    uint256 RANGEEND_8 = 60000000;
    uint256 PRICE_9 = 863;
    uint256 FACTOR_9 = 23200;
    uint256 RANGESTART_9 = 60000001;
    uint256 RANGEEND_9 = 70000000;
    uint256 PRICE_10 = 432;
    uint256 FACTOR_10 = 46000;
    uint256 RANGESTART_10 = 70000001;
    uint256 RANGEEND_10 = 80000000;
    uint256 PRICE_11 = 214;
    uint256 FACTOR_11 = 78000;
    uint256 RANGESTART_11 = 80000001;
    uint256 RANGEEND_11 = 85000000;
    uint256 UniCoinSize = 0;
    struct MessageQueue {
        string message;
        string from;
        uint expireTimestamp;
        uint startTimestamp;
        address sender;
    }

    uint256 maxSpendToken = 3600;
    MessageQueue[] mQueue;
    function add(uint256 a, uint256 b) public view {
                 require((a + b>=a) && (a + b>=b));


    }

    function div(uint256 a, uint256 b) public view {
        
          require(b!= 0);


    }

    function mul(uint256 a, uint256 b) public view {
        
            if(a!=0 && b!=0){
          require((a * b/a==b) && (a * b/b==a));
            }

    }

    function sub(uint256 a, uint256 b) public view {
                  require(a>=b);


    }

}
