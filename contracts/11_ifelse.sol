//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Conditionals_if{
    //remember we can not create conditionals directly under contracts, we have to create functions first
    
    function checking(uint a, uint b) public pure returns(uint){
        if(a>b){
            return a;
        }
        else{
            return b;
        }
    }
}

contract Conditionals_elseif{
    function checking(uint a, uint b) public pure returns(uint){
        if(a>b){
            return a;
        }
        else if(a == b){
            return 0;
        }
        else{
            return b;
        }
    }
}