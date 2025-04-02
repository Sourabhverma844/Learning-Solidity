//SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;

contract demo{
    struct Student{
        string name;
        uint roll;
        bool result;
    }
    mapping (uint => Student) public records;

    function insert(uint index, string memory _name, uint _roll, bool _result) public{
        records[index] = Student(_name,_roll,_result);
    }

    function returnValue(uint index) public view returns(Student memory){
        return records[index];
    }
}