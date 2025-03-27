// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 <0.9.0;

contract demo{
    uint public num;

    function setter(uint _num) public {
        num = _num;
        // here we will change the value of state variable, so if we are changin the value of the state variable in this case we will not write either pure and view.
    }

    function getter() public view returns(uint){
        return num;
        // here we only get the value or view can say read the value , in this case we use view here. because i am reading from this state variable
    }
    
    function random() public pure returns(uint){
        uint abc;
        abc = 7;
        return abc;
        // here we are not either reading from the state variable not writing in state variable in this case we will use pure keyword here
    }
}
