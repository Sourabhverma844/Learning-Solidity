// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;

contract demo1{
    function f1() public pure returns(uint){
        require(true == true, "True is not true");
        return 1;
    }
        function f2() public pure returns(uint){
        require(true == true, "True is not true");
        return 2;
    }
        function f3() public pure returns(uint){
        require(true == true, "True is not true");
        return 3;
    }
        function f4() public pure returns(uint){
        require(true == true, "True is not true");
        return 4;
    }
    // now this code is good and can work perfectly but,
    // here we are repeating same code again and again
}

contract demo2{

    modifier isTrue {
        require(true == false,"True is not true");
        _; // what this _(underscore) do here, it copies the code from the other function wherever we use modifier
    }
    function f1() public pure isTrue returns(uint){
        return 1;
    }
    function f2() public pure isTrue returns(uint){
        return 2;
    }
    function f3() public pure isTrue returns(uint){
        return 3;
    }
    function f4() public pure isTrue returns(uint){
        return 4;
    }
}

// Let's Learn How We Can Pass Arguments To modifiers
contract demo3{
    modifier isEven(uint a){
        require(a%2 == 0, "a is not even");
        _;
    }
    function f1(uint a) public pure isEven(a) returns(bool){
        return true;
    }

}