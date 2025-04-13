//SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;

contract demo{
    receive() external payable{
        // no calldata necessary here
        //just send a value on the message call
    }

    function pay() external payable{
        //in this case, we target pay with a value
    }
}