//SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;

import "forge-std/console.sol";

contract A {
    address  b;

    constructor(address _b){
        b = _b;
    }

    function payHalf() external {
        uint256 balance = address(this).balance;
        (bool success,) = b.call{ value: balance/2}("");
        require(success);
    }
}

contract B {
    address mostRecentPayer;

    receive() external payable {
        mostRecentPayer = msg.sender;
    }
}