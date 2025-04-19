//SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;

import "forge-std/console.sol";

contract A{
    uint sum;

    function storeSum(B b) external{
        sum = b.add(5,10);
    } 
}

interface B {
    function add(uint x, uint y) external returns(uint);
}