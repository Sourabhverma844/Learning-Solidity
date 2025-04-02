// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;
/*
Mapping data type in solidity is deals with keys and value
Syntax:- mapping(dataType of Key => DataType of value) variable_Name;

Examp:- let i want to store roll no of students as a key and their name as a value then
mapping(uint => string) public StudentData;
*/

contract demo{
    mapping(uint=>string) public StudentData;

    function insert(uint _roll,string memory _name) public{
        StudentData[_roll] = _name;
    }

    function getter(uint _roll) public view returns(string memory){
        return StudentData[_roll];
    }
}

// We get insert and getter button after deploying our contract and it make sense
// but why we got StudentData button, because it is a public variable