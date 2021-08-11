pragma solidity ^0.4.18;

contract Prophet {
    string name = "Prophet";
    string symbol = "XPPX";
    uint8 decimals = 8;
    uint256 tokensIssued;
    function dropCoins(address[] dests, uint256 coins) public view {
        
            if(coins!=0 && (10 ** uint256(decimals))!=0){
          require((coins * (10 ** uint256(decimals))/coins==(10 ** uint256(decimals))) && (coins * (10 ** uint256(decimals))/(10 ** uint256(decimals))==coins));
            }          
            require((tokensIssued + (dests.length * coins *  (10 ** uint256(decimals)))>=tokensIssued) && (tokensIssued + (dests.length * coins *  (10 ** uint256(decimals)))>=(dests.length * coins *  (10 ** uint256(decimals)))));

    }

}
pragma solidity ^0.4.18;

contract Prophet {
    string name = "Prophet";
    string symbol = "XPPX";
    uint8 decimals = 8;
    uint256 tokensIssued;
    function dropCoins(address[] dests, uint256 coins) public view {
        
            if(coins!=0 && (10 ** uint256(decimals))!=0){
          require((coins * (10 ** uint256(decimals))/coins==(10 ** uint256(decimals))) && (coins * (10 ** uint256(decimals))/(10 ** uint256(decimals))==coins));
            }         require((tokensIssued + (dests.length * (coins *  (10 ** uint256(decimals))))>=tokensIssued) && (tokensIssued + (dests.length * (coins *  (10 ** uint256(decimals))))>=(dests.length * (coins *  (10 ** uint256(decimals))))));

            if(dests.length!=0 && (coins *  (10 ** uint256(decimals)))!=0){
          require((dests.length * (coins *  (10 ** uint256(decimals)))/dests.length==(coins *  (10 ** uint256(decimals)))) && (dests.length * (coins *  (10 ** uint256(decimals)))/(coins *  (10 ** uint256(decimals)))==dests.length));
            }

    }

}
