//SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;

contract demo1{
    uint[] public arr1;

    function insertArr(uint[] memory _arr) public{
        arr1 = _arr;
    }

    function myarr() public view returns(uint[] memory){
        return arr1;
    }
}
/*
Memory, Storage, and Calldata are all memory areas, or we can say storage areas, where we actually store our variables. 
Since we are talking in reference to reference data types, they actually store variables of reference data types, 
such as arrays, structs, mappings, and strings.

You must remember that "calldata" and "memory" are just data locations. They are used only in reference to reference data types, not with any other data type. 
For example, if you think you can use them with `uint` or `address` data types, you cannot. They can only be used with reference data types.

We can use memory locations as either "memory" or "calldata". However, if we use "calldata" for "_arr", we cannot make any changes to "_arr".

This means that when we use "calldata" with "_arr", it becomes immutable.

If you try to assign a value like _arr[0] = 10; it will result in a TypeError: Calldata arrays are read-only.

Additionally, you can use the calldata keyword only inside function arguments. 
This means you cannot use the calldata keyword inside the function body or while returning a reference data type variable.
*/