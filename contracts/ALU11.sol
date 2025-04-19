//SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;

import "forge-std/console.sol";

contract A{
    uint sum;
    function addsum(address b) external{
        sum = B(b).add(5,10);
    }
}

contract B{
    function add(uint x, uint y) external pure returns(uint){
        return x + y;
    }
}