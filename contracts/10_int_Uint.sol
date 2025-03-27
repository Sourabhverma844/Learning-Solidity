// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;


//remember you have to deploye all contract seprately
contract demo1{
    uint public num;
    uint public num1 = 5;
    uint8 public num2 = 25; //0 to 2^(n)-1 (here n = 8 ) means 0 to 255 
    int public num3 = 10;
}
contract demo2{
    int8 public num4 = 20; //-2^(n-1) to 2^(n-1)-1 (here n = 8 ) means -128 to 127 
    // int8 public num3 = 200; That's why when i try to store 200 it gives me an error and it is an overflow situation
}