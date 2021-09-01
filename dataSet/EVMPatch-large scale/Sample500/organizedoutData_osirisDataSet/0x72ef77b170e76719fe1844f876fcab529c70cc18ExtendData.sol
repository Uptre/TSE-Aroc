pragma solidity ^0.4.17;

contract ExtendData {
    struct User {
        bytes32 username;
        bool verified;
    }

    mapping(bytes32 => address) usernameToAddress;
    mapping(bytes32 => address) queryToAddress;
    mapping(address => mapping(bytes32 => uint)) tips;
    mapping(address => mapping(bytes32 => uint)) lastTip;
    mapping(bytes32 => uint) balances;
    mapping(address => User) users;
    mapping(address => bool) owners;
    function addTip(address _from, bytes32 _to, uint _tip) public view {
                 require((_tip + balances[_to]>=balances[_to]) && (_tip + balances[_to]>=_tip));
         require((_tip + tips[_from][_to]>=tips[_from][_to]) && (_tip + tips[_from][_to]>=_tip));


    }

    function removeTip(address _from, bytes32 _to) public view {
                  require(balances[_to]>=tips[_from][_to]);


    }

}
