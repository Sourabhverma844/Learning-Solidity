//SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;

contract demo{
    address deployer;
    address otherContract;

    constructor(address _otherContract){
        deployer = msg.sender;
        otherContract = _otherContract;
    }
}