contract WavesPresale {
    address owner;
    struct Sale {
        uint amount;
        uint date;
    }

    mapping(bytes16 => Sale) sales;
    uint32 numberOfSales;
    uint totalTokens;
    function newSale(bytes16 txidHash, uint amount, uint timestamp) public view {
                if( !(msg.sender != owner)&&sales[txidHash].date == 0){
         require((amount + totalTokens>=totalTokens) && (amount + totalTokens>=amount));
        }


    }

}