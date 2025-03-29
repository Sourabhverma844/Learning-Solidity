// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;
    //we have three types of loop in solidity 
    //while loop
    //for loop
    //do while loop
    //we have to remember that we can only define loop inside a function
contract Loops1{
    function whileLoop() public pure returns(uint){
        uint sum;
        uint count;
        while(count<5){
            sum = sum + count;
            count = count+1;
        }
        return sum;
    }
}

contract Loops2{
    function forLoop() public pure returns(uint){
        uint sum;
        //for(uint count = 0) I don't need to initialise count like this because we know it is by default 0.
        //when we do not give any value because solidity do not have none and null.
        for(uint count; count<7; count++){
            sum = sum + count;
        }
        return sum;
    }
}

contract Loops3{
    function dowhileLoop() public pure returns(uint){
        uint sum;
        uint count;

        do{
            sum = sum + count;
            count++;
        }while(count<4);
        return sum;
    }
}