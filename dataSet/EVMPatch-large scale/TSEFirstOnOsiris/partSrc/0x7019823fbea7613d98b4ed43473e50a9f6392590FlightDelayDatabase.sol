pragma  solidity  ^0.4.16;

contract FlightDelayDatabase {
    enum Acc{Premium, RiskFund, Payout, Balance, Reward, OraclizeCosts}
    enum policyState{Applied, Accepted, Revoked, PaidOut, Expired, Declined, SendFailed}
    enum oraclizeState{ForUnderwriting, ForPayout}
    enum Currency{ETH, EUR, USD, GBP}
    struct Policy {
        address customer;
        uint premium;
        bytes32 riskId;
        uint weight;
        uint calculatedPayout;
        uint actualPayout;
        policyState state;
        uint stateTime;
        bytes32 stateMessage;
        bytes proof;
        Currency currency;
        bytes32 customerExternalId;
    }

    struct Risk {
        bytes32 carrierFlightNumber;
        bytes32 departureYearMonthDay;
        uint arrivalTime;
        uint delayInMinutes;
        uint8 delay;
        uint cumulatedWeightedPremium;
        uint premiumMultiplier;
    }

    struct OraclizeCallback {
        uint policyId;
        oraclizeState oState;
        uint oraclizeTime;
    }

    struct Customer {
        bytes32 customerExternalId;
        bool identityConfirmed;
    }

    uint MIN_DEPARTURE_LIM;
    uint MAX_DEPARTURE_LIM;
    bytes32[] validOrigins;
    bytes32[] validDestinations;
    Policy[] policies;
    mapping(bytes32 => uint[]) extCustomerPolicies;
    mapping(address => Customer) customers;
    mapping(address => uint[]) customerPolicies;
    mapping(bytes32 => OraclizeCallback) oraclizeCallbacks;
    mapping(bytes32 => Risk) risks;
    mapping(address => mapping(address => mapping(uint8 => bool))) accessControl;
    int[] ledger = 6;
    FlightDelayAccessControllerInterface FD_AC;
    function addOrigin(bytes32 _origin) public view {
        if( FD_AC.checkPermission(102, msg.sender) ){
          require(validOrigins.length>=1);
}


    }

    function setLedger(uint8 _index, int _value) public view {
                if( FD_AC.checkPermission(101, msg.sender)){
         require((_value + ledger[_index]>=ledger[_index]) && (_value + ledger[_index]>=_value));
        }


    }

}
pragma solidity ^0.4.11;pragma solidity ^0.4.11;pragma solidity ^0.4.11;pragma solidity ^0.4.11;pragma solidity ^0.4.11;pragma solidity ^0.4.11;pragma solidity ^0.4.11;

contract FlightDelayDatabase {
    enum Acc{Premium, RiskFund, Payout, Balance, Reward, OraclizeCosts}
    enum policyState{Applied, Accepted, Revoked, PaidOut, Expired, Declined, SendFailed}
    enum oraclizeState{ForUnderwriting, ForPayout}
    enum Currency{ETH, EUR, USD, GBP}
    struct Policy {
        address customer;
        uint premium;
        bytes32 riskId;
        uint weight;
        uint calculatedPayout;
        uint actualPayout;
        policyState state;
        uint stateTime;
        bytes32 stateMessage;
        bytes proof;
        Currency currency;
        bytes32 customerExternalId;
    }

    struct Risk {
        bytes32 carrierFlightNumber;
        bytes32 departureYearMonthDay;
        uint arrivalTime;
        uint delayInMinutes;
        uint8 delay;
        uint cumulatedWeightedPremium;
        uint premiumMultiplier;
    }

    struct OraclizeCallback {
        uint policyId;
        oraclizeState oState;
        uint oraclizeTime;
    }

    struct Customer {
        bytes32 customerExternalId;
        bool identityConfirmed;
    }

    uint MIN_DEPARTURE_LIM;
    uint MAX_DEPARTURE_LIM;
    bytes32[] validOrigins;
    bytes32[] validDestinations;
    Policy[] policies;
    mapping(bytes32 => uint[]) extCustomerPolicies;
    mapping(address => Customer) customers;
    mapping(address => uint[]) customerPolicies;
    mapping(bytes32 => OraclizeCallback) oraclizeCallbacks;
    mapping(bytes32 => Risk) risks;
    mapping(address => mapping(address => mapping(uint8 => bool))) accessControl;
    int[] ledger = 6;
    FlightDelayAccessControllerInterface FD_AC;
    function addOrigin(bytes32 _origin) public view {
              if( FD_AC.checkPermission(102, msg.sender)){
          require(validOrigins.length>=1);
        }


    }

    function setLedger(uint8 _index, int _value) public view {
              if( FD_AC.checkPermission(101, msg.sender)){
         require((_value + ledger[_index]>=ledger[_index]) && (_value + ledger[_index]>=_value));
        }


    }

}
