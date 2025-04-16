//SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;

import "forge-std/console.sol";

contract A {
    address b;
    uint256 public errorCounter = 0;

    constructor(address _b){
        b = _b;
    }

    function callB() external payable {
        (bool success, bytes memory returnData) = b.call{value: 1 ether}("");
        if(!success){
            console.logBytes(returnData);
            console.logBytes32(keccak256("DoNotPayMe(uint256)"));
        }
    }
}

contract B {
    uint x = 0;
    error DoNotPayMe(uint256);

    receive() external payable { 
        x = 15;
        revert DoNotPayMe(msg.value);
    }
}