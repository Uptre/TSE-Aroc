pragma solidity ^0.4.11;

contract NettingChannelLibrary {
    string contract_version = "0.1._";
    struct Participant {
        address node_address;
        uint256 balance;
        bytes32 locksroot;
        uint256 transferred_amount;
        uint64 nonce;
        mapping(bytes32 => bool) withdrawn_locks;
    }

    struct Data {
        uint settle_timeout;
        uint opened;
        uint closed;
        uint settled;
        address closing_address;
        Token token;
        Participant[] participants;
    }

    mapping(address => uint8) participant_index;
    bool updated;
    struct Data {
        Token token;
        address[] all_channels;
        mapping(bytes32 => uint) partyhash_to_channelpos;
        mapping(address => address[]) nodeaddress_to_channeladdresses;
        mapping(address => mapping(address => uint)) node_index;
    }

    function deposit(Data self, uint256 amount) public view {
                if( self.opened>0&&self.closed==0&&self.token.balanceOf(msg.sender)>=amount&&self.token.transferFrom(msg.sender, this, amount) == true){
          require((amount + self.participants[index].balance>=self.participants[index].balance) && (amount + self.participants[index].balance>=amount));
        }
    }

    function withdraw(Data self, bytes locked_encoded, bytes merkle_proof, bytes32 secret) public view {
                if( counterparty.locksroot!=0&&!(counterparty.withdrawn_locks[hashlock])&&expiration>=block.number&&hashlock==sha3(secret)&&counterparty.locksroot==computeMerkleRoot(locked_encoded, merkle_proof)){
          require((amount + self.participants[1 -  index_or_throw(self, msg.sender)].transferred_amount>=self.participants[1 -  index_or_throw(self, msg.sender)].transferred_amount) && (amount + self.participants[1 -  index_or_throw(self, msg.sender)].transferred_amount>=amount));
        }
    }

}
