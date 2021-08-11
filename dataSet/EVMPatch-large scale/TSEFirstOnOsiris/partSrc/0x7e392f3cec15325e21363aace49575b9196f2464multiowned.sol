pragma solidity ^0.4.6;

contract multiowned {
    struct PendingState {
        uint yetNeeded;
        uint ownersDone;
        uint index;
    }

    uint m_required;
    uint m_numOwners;
    uint[256] m_owners;
    uint c_maxOwners = 250;
    mapping(uint => uint) m_ownerIndex;
    mapping(bytes32 => PendingState) m_pending;
    bytes32[] m_pendingIndex;
    struct Transaction {
        address to;
        uint value;
        bytes data;
    }

    function removeOwner(address _owner) public view {
                if( !(m_ownerIndex[uint(_owner)] == 0)){
          require(m_numOwners>=1);
        }


    }

}
pragma solidity ^0.4.6;

contract multiowned {
    struct PendingState {
        uint yetNeeded;
        uint ownersDone;
        uint index;
    }

    uint m_required;
    uint m_numOwners;
    uint[] m_owners = 256;
    uint c_maxOwners = 250;
    mapping(uint => uint) m_ownerIndex;
    mapping(bytes32 => PendingState) m_pending;
    bytes32[] m_pendingIndex;
    struct Transaction {
        address to;
        uint value;
        bytes data;
    }

    function removeOwner(address _owner) public view {
              if( m_ownerIndex[uint(_owner)] == 0){
          require(m_numOwners>=1);
        }


    }

}
pragma solidity ^0.4.6;

contract multiowned {
    struct PendingState {
        uint yetNeeded;
        uint ownersDone;
        uint index;
    }

    uint m_required;
    uint m_numOwners;
    uint[] m_owners = 256;
    uint c_maxOwners = 250;
    mapping(uint => uint) m_ownerIndex;
    mapping(bytes32 => PendingState) m_pending;
    bytes32[] m_pendingIndex;
    struct Transaction {
        address to;
        uint value;
        bytes data;
    }

    function removeOwner(address _owner) public view {
              if( m_ownerIndex[uint(_owner)] == 0){
          require(m_numOwners>=1);
        }


    }

}
