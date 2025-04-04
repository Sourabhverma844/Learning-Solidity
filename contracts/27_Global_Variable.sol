//SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;

contract demo{
    //msg.sender
    //let create a function that is going to return the address of person who called the function.
    function CallerAddress() public view returns(address){
        return msg.sender;
        // this msg.sender will return us the address of the person who is actually calling this function.
    }

    //
    //This returns us the current block timestamps
    function returnBlockTimestamp() public view returns(uint){
        return block.timestamp;
        // it will give us unix timestamp, unix clock is running since 1st january 1970.
    }
}

//to check the time we can go on unixtimestamp.com and give the timestamp value to this web and get time.