// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;

import "forge-std/console.sol";

contract A {
    uint256 public sum;
    address b;

    constructor(address _b){
        b = _b;
        (bool success, bytes memory returnData) = b.call(hex"771602f70000000000000000000000000000000000000000000000000000000000000005000000000000000000000000000000000000000000000000000000000000000a");
        require(success);
        sum = abi.decode(returnData, (uint256));
    }
}

contract B {
    fallback() external {
        console.log("hey i am the fallback");
        console.logBytes4(msg.sig);
        console.logBytes(msg.data);
    }

    function add(uint256 x, uint256 y) external view returns (uint256){
        console.log(x);
        console.log(y);
        return x + y;
    }
}

