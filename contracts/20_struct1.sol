//SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;

// Struct is a complex data type, a complex data type is usually a composite of other existing data types.
/*
struct Student{
    string name;
    uint roll;
    bool pass;
*/
// Syntax :-  struct_type public var_name;

contract demo{
    struct studentsdata{
        string name;
        uint roll;
        bool pass;
    }

    studentsdata public student;

    function insert(string memory _name, uint  _roll, bool _pass) public {
        // student = studentsdata(_name,_roll,_pass);
        student.name = _name;
        student.roll = _roll;
        student.pass = _pass;
    }

    function getter() public view returns(studentsdata memory){
        return student;
    }
    function getname() public view returns(string memory){
        return student.name;
    }
}
