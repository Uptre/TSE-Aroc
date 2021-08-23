pragma solidity ^0.4.18;

contract Crowdsale {
    uint preSaleStart = 1513771200;
    uint preSaleEnd = 1515585600;
    uint256 preSaleTotalTokens = 30000000;
    uint256 preSaleTokenCost = 6000;
    address preSaleAddress;
    uint icoStart;
    uint256 icoSaleTotalTokens = 400000000;
    address icoAddress;
    uint256 advisersConsultantTokens = 15000000;
    address advisersConsultantsAddress;
    uint256 bountyTokens = 15000000;
    address bountyAddress = 0xD53E82Aea770feED8e57433D3D61674caEC1D1Be;
    uint256 founderTokens = 40000000;
    address founderAddress;
    mapping(address => uint256) balanceOf;
    function () public {
              if( msg.value>0&&!isPreSaleClosed()&&preSaleTotalTokens>=(preSaleTotalTokens * msg.value /  1000000000000000000)&&!isIcoClosed()){
         require((icoStart + (7 * 24 * 60 * 60)>=icoStart) && (icoStart + (7 * 24 * 60 * 60)>=(7 * 24 * 60 * 60)));
        }


    }

    function isIcoClosed() public view {
                 require((icoStart + (35 * 24 * 60 * 60)>=icoStart) && (icoStart + (35 * 24 * 60 * 60)>=(35 * 24 * 60 * 60)));


    }

}
