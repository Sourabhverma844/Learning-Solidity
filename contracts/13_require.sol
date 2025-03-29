// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;

contract demorequire{

    function iszero_using_require(uint a) public pure returns(bool){
        //require(condition, "Optional error message");
        require(a == 0,"a is not equal to zero");
        return true;
    }

    function iszero_using_ifelse(uint a) public pure returns(bool){
        if(a == 0){
            return true;
        }
        revert ("a is not equal to zero"); // this is like throwing an error
    }
}
