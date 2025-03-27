// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract demo{
    uint public num = 5;
    constructor(uint _num){
        // constructors are special type of fuction which are called by solidity by default.
        // when we deployed our smart contract, then during this deployment process the constructor function got called by the solidity programming language and made the value from 5 to 10
        num = _num;
    }
}
// so here when we try to deploy our contract before depluying it i need to pass some value in this argument uint _num then this value passed in constructor and change the value of state variable

// Some Important points to remember
// Executed only once , during the deployement part only constructor get called
// you can create only one constructor and that is totaly optional (so it is not must that you need to create a constructor but you can only create one)
// a default constructor is created bt the compiler if there is no explicitly defined constructor (it means if you are not going to create your own constructor the solidity will create a constructor for you that is not visible to you and not change any of the values of your contract)