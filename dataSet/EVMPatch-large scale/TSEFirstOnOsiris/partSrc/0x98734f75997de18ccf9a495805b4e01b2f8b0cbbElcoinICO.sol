pragma  solidity  ^0.4.16;

contract ElcoinICO {
    uint256 tokensPerEth = 300;
    uint256 tokenLimit = 60 * 1e6 * 1e18;
    uint256 tokensForSale = tokenLimit * 50 / 100;
    uint256 presaleSold = 0;
    uint256 startTime = 1511038800;
    uint256 endTime = 1517778000;
    ELC elc;
    address team;
    enum IcoState{Presale, Running, Paused, Finished}
    IcoState icoState = IcoState.Presale;
    function calcPresaleDiscount(uint256 _value, uint256 _percent) public view {
        
          require((100 - _percent)!= 0);
          require(100>=_percent);


    }

    function getBonus(uint256 _elcValue, uint256 _sold) public view {
                  require(tokensForSale>=presaleSold);


    }

    function getTimeBonus(uint time) public view {
                 require((startTime + 1 weeks>=startTime) && (startTime + 1 weeks>=1 weeks));
         require((startTime + 3 weeks>=startTime) && (startTime + 3 weeks>=3 weeks));
        if( !(time < startTime +  3 weeks)){
         require((startTime + 4 weeks>=startTime) && (startTime + 4 weeks>=4 weeks));
        }

if( !(time < startTime +  1 weeks) ){
         require((startTime + 2 weeks>=startTime) && (startTime + 2 weeks>=2 weeks));
}


    }

    function getTotal(uint256 _value) public view {
                  require(elc.totalSupply()>=presaleSold);


    }

}

contract ELC{}pragma solidity ^0.4.15;

contract ElcoinICO {
    uint256 tokensPerEth = 300;
    uint256 tokenLimit = 60 * 1e6 * 1e18;
    uint256 tokensForSale = tokenLimit * 50 / 100;
    uint256 presaleSold = 0;
    uint256 startTime = 1511038800;
    uint256 endTime = 1517778000;
    ELC elc;
    address team;
    enum IcoState{Presale, Running, Paused, Finished}
    IcoState icoState = IcoState.Presale;
    function calcPresaleDiscount(uint256 _value, uint256 _percent) public view {
        
          require((100 - _percent)!= 0);
          require(100>=_percent);


    }

    function getBonus(uint256 _elcValue, uint256 _sold) public view {
                  require(tokensForSale>=presaleSold);


    }

    function getTimeBonus(uint time) public view {
                 require((startTime + 1 weeks>=startTime) && (startTime + 1 weeks>=1 weeks));
         require((startTime + 4 weeks>=startTime) && (startTime + 4 weeks>=4 weeks));

if( time < startTime +  1 weeks){
         require((startTime + 2 weeks>=startTime) && (startTime + 2 weeks>=2 weeks));
      if( time < startTime +  2 weeks){
         require((startTime + 3 weeks>=startTime) && (startTime + 3 weeks>=3 weeks));
        }
}


    }

    function getTotal(uint256 _value) public view {
                  require(elc.totalSupply()>=presaleSold);


    }

}
