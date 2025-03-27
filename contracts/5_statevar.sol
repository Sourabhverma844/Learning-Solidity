//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

//we define state varirables inside the {} , statevariables are basically those variables that are declred under {} so any variable that is declared under {} is state variables.
// in order to see what is stored inside state variable, we have to make it public.
contract statevar{
    uint public num = 5; //state variable
    // for uint data type if we did not initialise a value then by default the value is set to 0.
    //one more method to intialise any state variable, we can use constructor and inside this constructor as well we can initialise or we can cahnge the value of num variable
    constructor(){
        num = 10;
    }

    //one more way 
    function setter() public{
        num = 100;
    }
}

//State varibales are that variable that cause you huge amount of gas so you should be cautious while declaring state variable
//state variables are get permanently stored on blockchain