pragma solidity ^0.4.18;

contract Utils {
    ERC20 ETH_TOKEN_ADDRESS = ERC20(0x00eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee);
    uint PRECISION = (10 ** 18);
    uint MAX_QTY = (10 ** 28);
    uint MAX_RATE = (PRECISION * 10 ** 6);
    uint MAX_DECIMALS = 18;
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

    function calcDstQty(uint srcQty, uint srcDecimals, uint dstDecimals, uint rate) public view {
                if( dstDecimals >= srcDecimals&&(dstDecimals - srcDecimals)<=MAX_DECIMALS){

          require(PRECISION!= 0);

            if(srcQty * rate!=0 && (10 ** (dstDecimals - srcDecimals))!=0){
          require((srcQty * rate * (10 ** (dstDecimals - srcDecimals))/srcQty * rate==(10 ** (dstDecimals - srcDecimals))) && (srcQty * rate * (10 ** (dstDecimals - srcDecimals))/(10 ** (dstDecimals - srcDecimals))==srcQty * rate));
            }          require(dstDecimals>=srcDecimals);
        }


    }

}

contract ERC20{}