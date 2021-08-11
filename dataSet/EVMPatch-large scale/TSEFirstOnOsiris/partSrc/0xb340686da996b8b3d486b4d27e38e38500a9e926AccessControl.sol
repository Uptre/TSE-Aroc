pragma solidity ^0.4.17;

contract AccessControl {
    enum ResultCode{SUCCESS, ERROR_CLASS_NOT_FOUND, ERROR_LOW_BALANCE, ERROR_SEND_FAIL, ERROR_NOT_OWNER, ERROR_NOT_ENOUGH_MONEY, ERROR_INVALID_AMOUNT}
    enum AngelAura{Blue, Yellow, Purple, Orange, Red, Green}
    address creatorAddress;
    uint16 totalSeraphims = 0;
    mapping(address => bool) seraphims;
    bool isMaintenanceMode = true;
    struct PetCardSeries {
        uint8 petCardSeriesId;
        uint32 currentPetTotal;
        uint32 maxPetTotal;
    }

    struct Pet {
        uint64 petId;
        uint8 petCardSeriesId;
        address owner;
        string name;
        uint8 luck;
        uint16 auraRed;
        uint16 auraYellow;
        uint16 auraBlue;
        uint64 lastTrainingTime;
        uint64 lastBreedingTime;
        uint price;
    }

    function removeSERAPHIM(address _oldSeraphim) public view {
                if( seraphims[_oldSeraphim] == true){
          require(totalSeraphims>=1);
        }
    }

}
pragma solidity ^0.4.17;

contract AccessControl {
    enum ResultCode{SUCCESS, ERROR_CLASS_NOT_FOUND, ERROR_LOW_BALANCE, ERROR_SEND_FAIL, ERROR_NOT_OWNER, ERROR_NOT_ENOUGH_MONEY, ERROR_INVALID_AMOUNT}
    enum AngelAura{Blue, Yellow, Purple, Orange, Red, Green}
    address creatorAddress;
    uint16 totalSeraphims = 0;
    mapping(address => bool) seraphims;
    bool isMaintenanceMode = true;
    struct PetCardSeries {
        uint8 petCardSeriesId;
        uint32 currentPetTotal;
        uint32 maxPetTotal;
    }

    struct Pet {
        uint64 petId;
        uint8 petCardSeriesId;
        address owner;
        string name;
        uint8 luck;
        uint16 auraRed;
        uint16 auraYellow;
        uint16 auraBlue;
        uint64 lastTrainingTime;
        uint64 lastBreedingTime;
        uint price;
    }

    function removeSERAPHIM(address _oldSeraphim) public view {
              if( seraphims[_oldSeraphim] == true){
          require(totalSeraphims>=1);
        }


    }

}
