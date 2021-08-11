/**
 *Submitted for verification at Etherscan.io on 2017-11-10
*/

contract calc { 
    event ret(uint r);
    function multiply(uint a, uint b) returns(uint d) { 
        uint res = a * b;
        ret (res);
        return res; 
    } 
}