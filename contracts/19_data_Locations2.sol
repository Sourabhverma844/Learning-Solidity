//SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;

contract demo{
    uint[3] public arr = [25,50,75]; //by default this arr is getting store at storage area because it is a state variable and declared at contract level.

    function fmemory() public view{  
        uint[3] memory arr1 = arr; //at this point of time, this arr1 is a local variable, here arr1 is an array that we created inside the memory.
        arr1[0] = 90;
    }

    function fstorage() public {
        uint[3] storage arr2 = arr; // here arr2 is a pointer to arr
        arr2[0] = 90;
    }
}

// first we deploy the contract and check on 0 index, we have 25 on 0th index of arr.
// then we call fmemory and again check on 0th index, again we have 25 on 0th index of arr.
// but when we call fstorege and then checked the 0th index of arr, now we have 90 there, because arr2 is a pointer to arr.