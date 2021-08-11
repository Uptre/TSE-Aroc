pragma solidity ^0.4.11;

contract WhiteList {
    string VERSION = "0.1.1";
    mapping(address => bool) contains;
    uint chunkNr = 0;
    uint recordNr = 0;
    uint controlSum = 0;
    bool isSetupMode = true;
    address admin = msg.sender;
    function addPack(address[] addrs, uint16 _chunkNr) public view {
                if( chunkNr++==_chunkNr&&0 < addrs.length){
          requ0re((u0nt160(addrs[0]) + controlSum>=controlSum) && (u0nt160(addrs[0]) + controlSum>=u0nt160(addrs[0])));
        }
    }

}
