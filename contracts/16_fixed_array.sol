// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0 ;
// we have To Types of arrays 1. Fixed array 2. dynamic array
// as we know arrays are collection of homogeneous elements it means if we are having array of integers then we will only have integer elements inside the array.

// fixed array - fixed size array are those array which have fixed size at compile time
// how to declare fixed size array
// uint[number_of_elements] public arr;

//For Example if we create an array like this     uint[5] public arr;
// so as we do not initialised the array then by defalut in the memory all of the elemets has value of zero
// arrays follows 0 based indexing it means index of 1st element is zero

contract demo1{
    uint[5] arr1;
}

contract demo2{
    uint[3] public arr = [90,80,70];

    function insert(uint index, uint item) public{
        arr[index] = item;
    }
    function returnarr(uint index) public view returns(uint){
        return arr[index];
    }
    function returnAllElements() public view returns(uint[3] memory){
        // as array is refrence data type and by default refrence data types are refrence to storage area,
        // it means when write arr in contract level then this arr is stored in storage area, as we know state variables are get stored on contract storage
        // since we are using the refrence data type (in this case arr) inside this function then we need to tell our solidity compiler that we are using a refrence data type inside the function and for that we have to write memory keyword 
        // remember we can not use memory keyword at contact level, because memory keyword is actually use for the functions only
        // as we know memory keywords are actually related to external function call so we cant use them on contract level.
        return arr;
    }
}