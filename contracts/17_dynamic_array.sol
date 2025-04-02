// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0 ;

// Dynamic array are those array wich are dynamic in nature, which means there size is not fixed at compile time
// Dynamic array declaration        uint[] public arr;
// To insert an element we use arr.push(element)
// To remove an element we use arr.pop(). it removes the last element ever time it is executed.
// To find the length of an array we use arr.length(). it returns the length of the array in uint datat type.

contract demo{
    uint[] public arr;

    function insert(uint item) public{
        arr.push(item);
    }

    function removeLast() public{
        arr.pop();
    }

    function lengtharr() public view returns(uint){
        return arr.length;
    }
    function myarr() public view returns(uint[] memory){
        return arr;
    }
}