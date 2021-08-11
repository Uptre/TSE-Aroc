pragma solidity ^0.4.16;

contract TokenERC20 {
    string name;
    string symbol;
    uint8 decimals = 18;
    uint256 totalSupply;
    mapping(address => uint256) balanceOf;
    mapping(address => mapping(address => uint256)) allowance;
    struct Product_genuine {
        address m_made_from_who;
        string m_Product_GUID;
        string m_Product_Description;
        address m_who_have;
        address m_send_to_who;
        string m_hash;
        uint256 m_moved_count;
    }

    function _transfer(address _from, address _to, uint _value) public view {
        if( _to!=0x0&&balanceOf[_from]>=_value&&balanceOf[_to] +  _value>balanceOf[_to] ){          require((balanceOf[_from] + balanceOf[_to]>=balanceOf[_from]) && (balanceOf[_from] + balanceOf[_to]>=balanceOf[_to]));
          require((balanceOf[_from]-_value + balanceOf[_to]+_value>=balanceOf[_from]-_value) && (balanceOf[_from]-_value + balanceOf[_to]+_value>=balanceOf[_to]+_value));
}

    }

}
