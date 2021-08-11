pragma solidity ^0.4.11;

contract EthereumSoft {
    string name = "Ethereum Soft";
    string symbol = "ESFT";
    uint256 decimals = 1;
    mapping(address => uint256) balanceOf;
    mapping(address => mapping(address => uint256)) allowance;
    uint256 totalSupply = 5000000 * (10 ** decimals);
    address owner;
    function burnSupply(uint256 _amount) public view {
                  require(balanceOf[owner]>=_amount);

    }

    function burnTotalSupply(uint256 _amount) public view {
                  require(totalSupply>=_amount);

    }

}
pragma solidity ^0.4.11;

contract EthereumSoft {
    string name = "Ethereum Soft";
    string symbol = "ESFT";
    uint256 decimals = 1;
    mapping(address => uint256) balanceOf;
    mapping(address => mapping(address => uint256)) allowance;
    uint256 totalSupply = 5000000 * (10 ** decimals);
    address owner;
    function burnSupply(uint256 _amount) public view {
                  require(balanceOf[owner]>=_amount);


    }

    function burnTotalSupply(uint256 _amount) public view {
                  require(totalSupply>=_amount);


    }

}
