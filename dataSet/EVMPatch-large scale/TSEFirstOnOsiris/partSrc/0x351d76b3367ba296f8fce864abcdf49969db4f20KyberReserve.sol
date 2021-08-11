pragma solidity ^0.4.18;

contract KyberReserve {
    struct TokenControlInfo {
        uint minimalRecordResolution;
        uint maxPerBlockImbalance;
        uint maxTotalImbalance;
    }

    struct TokenImbalanceData {
        int lastBlockBuyUnitsImbalance;
        uint lastBlock;
        int totalBuyUnitsImbalance;
        uint lastRateUpdateBlock;
    }

    struct StepFunction {
        int[] x;
        int[] y;
    }

    struct TokenData {
        bool listed;
        bool enabled;
        uint compactDataArrayIndex;
        uint compactDataFieldIndex;
        uint baseBuyRate;
        uint baseSellRate;
        StepFunction buyRateQtyStepFunction;
        StepFunction sellRateQtyStepFunction;
        StepFunction buyRateImbalanceStepFunction;
        StepFunction sellRateImbalanceStepFunction;
    }

    address kyberNetwork;
    bool tradeEnabled;
    ConversionRates conversionRatesContract;
    SanityRatesInterface sanityRatesContract;
    mapping(bytes32 => bool) approvedWithdrawAddresses;
    function calcDstQty(uint srcQty, uint srcDecimals, uint dstDecimals, uint rate) public view {
                if( dstDecimals >= srcDecimals&&(dstDecimals - srcDecimals)<=MAX_DECIMALS){

          require(PRECISION!= 0);

            if(srcQty * rate!=0 && (10 ** (dstDecimals - srcDecimals))!=0){
          require((srcQty * rate * (10 ** (dstDecimals - srcDecimals))/srcQty * rate==(10 ** (dstDecimals - srcDecimals))) && (srcQty * rate * (10 ** (dstDecimals - srcDecimals))/(10 ** (dstDecimals - srcDecimals))==srcQty * rate));
            }          require(dstDecimals>=srcDecimals);
        }


    }

}
pragma solidity ^0.4.18;

contract KyberReserve {
    struct TokenControlInfo {
        uint minimalRecordResolution;
        uint maxPerBlockImbalance;
        uint maxTotalImbalance;
    }

    struct TokenImbalanceData {
        int lastBlockBuyUnitsImbalance;
        uint lastBlock;
        int totalBuyUnitsImbalance;
        uint lastRateUpdateBlock;
    }

    struct StepFunction {
        int[] x;
        int[] y;
    }

    struct TokenData {
        bool listed;
        bool enabled;
        uint compactDataArrayIndex;
        uint compactDataFieldIndex;
        uint baseBuyRate;
        uint baseSellRate;
        StepFunction buyRateQtyStepFunction;
        StepFunction sellRateQtyStepFunction;
        StepFunction buyRateImbalanceStepFunction;
        StepFunction sellRateImbalanceStepFunction;
    }

    address kyberNetwork;
    bool tradeEnabled;
    ConversionRates conversionRatesContract;
    SanityRatesInterface sanityRatesContract;
    mapping(bytes32 => bool) approvedWithdrawAddresses;
    function calcDstQty(uint srcQty, uint srcDecimals, uint dstDecimals, uint rate) public view {
              if( dstDecimals >= srcDecimals&&(dstDecimals - srcDecimals)<=MAX_DECIMALS){

          require(PRECISION!= 0);

            if(srcQty * rate!=0 && (10 ** (dstDecimals - srcDecimals))!=0){
          require((srcQty * rate * (10 ** (dstDecimals - srcDecimals))/srcQty * rate==(10 ** (dstDecimals - srcDecimals))) && (srcQty * rate * (10 ** (dstDecimals - srcDecimals))/(10 ** (dstDecimals - srcDecimals))==srcQty * rate));
            }          require(dstDecimals>=srcDecimals);
        }


    }

}
