var Token = artifacts.require("./Token.sol");
var Mallory = artifacts.require("./Mallory.sol");
var Tokenr = artifacts.require("./Tokenr.sol");

module.exports = function(deployer){
	        deployer.deploy(Tokenr);
	        deployer.deploy(Token)
	        .then(() => Token.deployed())
	        .then(() => deployer.deploy(Mallory,Token.address));
}  
