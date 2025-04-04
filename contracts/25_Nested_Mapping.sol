//SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;

/*
Syntax:- mapping(address=>mapping(address=>bool)) private varname;
*/
contract demo{
    mapping(uint=>mapping(uint=>bool)) public data;

    function insert(uint row, uint column, bool value) public{
        data[row][column] = value;
    }
    function Result(uint row, uint column) public view returns(bool){
        return data[row][column];
    }
}