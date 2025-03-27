//SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.7.0 <0.9.0;


contract localvar{
    uint c; // this is state variable
    function local() public pure returns(uint){
        uint a;
        uint b;
        return a+b;
    }
}
//Imp Points
// local variable are declared inside function and kept on stack, not on storage
// we have three types of areas in solidity stack, storage and memory
// Local variables are the variables that we declared inside the function as in this examp uint a and uint b
// Local variable does not cost us any gas because it not occupies storage n blockcahin
// we are using ths local variable only till the time the function is exist and after that this local variables get destroyed
// so reading and writng in local variable did not cost any amount of gas