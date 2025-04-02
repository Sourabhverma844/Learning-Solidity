//SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;

contract demo{
    struct Studentdata{
        string name;
        uint roll;
        bool result;
    }

    Studentdata[4] public student; //This a fixed array
    // Studentdata[4] public student   "This is Dynamic Array"

    function insert(uint index, string memory _name, uint _roll, bool _result ) public {
        student[index] = Studentdata(_name, _roll, _result);
        //student.push(Studentdata(_name,_roll,_pass));
    }

    function returnStudent(uint index) public view returns(Studentdata memory){
        return student[index];
    }
}