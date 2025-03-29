// SPDX-License-Identifier: GPL-3.0
pragma solidity > 0.7.0 < 0.9.0;

// bool public value(var name) = true/false;
// bool data type value can be either true or false.
// By defalut value is false if not initialized.

contract demobool{
    bool public value1;
    bool public value2 = true;

    function chech(uint a) public pure returns(bool){
        if(a % 2 == 0){
            return true;
        }
        else{
            return false;
        }
    }
}