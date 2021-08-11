pragma  solidity  ^0.4.16;

contract ExoTownIco {
    ExoTownToken exotownToken;
    enum State{Pause, Running}
    State currentState = State.Pause;
    uint privateSaleSoldTokens = 0;
    uint preSaleSoldTokens = 0;
    uint publicSaleSoldTokens = 0;
    uint privateSaleEtherRaised = 0;
    uint preSaleEtherRaised = 0;
    uint publicSaleEtherRaised = 0;
    address icoManager;
    address founderWallet;
    address buyBack;
    address developmentWallet;
    address marketingWallet;
    address teamWallet;
    address bountyOwner;
    address mediatorWallet;
    bool sentTokensToBountyOwner = false;
    bool sentTokensToFounders = false;
    function withdrawEther(uint _value) public view {
        if( _value>0){

            if(_value!=0 && 1000000000000000!=0){
          require((_value * 1000000000000000/_value==1000000000000000) && (_value * 1000000000000000/1000000000000000==_value));
            }        if( _value *  1000000000000000<=this.balance){

            if(_value!=0 && 1000000000000000!=0){
          require((_value * 1000000000000000/_value==1000000000000000) && (_value * 1000000000000000/1000000000000000==_value));
            }        }
}


    }

}
pragma solidity ^0.4.11;

contract ExoTownIco {
    ExoTownToken exotownToken;
    enum State{Pause, Running}
    State currentState = State.Pause;
    uint privateSaleSoldTokens = 0;
    uint preSaleSoldTokens = 0;
    uint publicSaleSoldTokens = 0;
    uint privateSaleEtherRaised = 0;
    uint preSaleEtherRaised = 0;
    uint publicSaleEtherRaised = 0;
    address icoManager;
    address founderWallet;
    address buyBack;
    address developmentWallet;
    address marketingWallet;
    address teamWallet;
    address bountyOwner;
    address mediatorWallet;
    bool sentTokensToBountyOwner = false;
    bool sentTokensToFounders = false;
    function withdrawEther(uint _value) public view {
        if( _value>0){

            if(_value!=0 && 1000000000000000!=0){
          require((_value * 1000000000000000/_value==1000000000000000) && (_value * 1000000000000000/1000000000000000==_value));
            }      if( _value *  1000000000000000<=this.balance){

            if(_value!=0 && 1000000000000000!=0){
          require((_value * 1000000000000000/_value==1000000000000000) && (_value * 1000000000000000/1000000000000000==_value));
            }        }
}


    }

}
