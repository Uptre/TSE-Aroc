pragma solidity ^0.4.13;

contract subdomainSale {
    AbstractENS ens = AbstractENS(0x314159265dD8dbb310642f98f50C066173C1259b);
    Registrar registrar = Registrar(0x6090A6e47849629b7245Dfa1Ca21D94cd15878Ef);
    address admin = 0x8301Fb8945760Fa2B3C669e8F420B8795Dc03766;
    struct Domain {
        address originalOwner;
        uint commitPeriod;
        uint regPeriod;
        bool subSale;
        uint subPrice;
        uint subExpiry;
    }

    mapping(bytes32 => Domain) records;
    function listSubName(bytes32 label, bytes32 node, uint commit, uint price, uint expiry) public view {
                if( records[node].subSale==false){
          require((now + commit + 86400>=now) && (now + commit + 86400>=commit));
        }
    }

}
