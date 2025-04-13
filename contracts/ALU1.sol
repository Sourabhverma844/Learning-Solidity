//SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;

contract demo1{
    function example1() private pure{
        //private: call me within this contract
        //pure: I cannot read/write to storage
    }
    function example2() internal view{
        //internal: call me within this contract (+ inheritance!)
        //view: I can read from storage, not write 
    }
    function example3() public payable{
        //public: call me inside and outside this contract
        //payable: send me some ether!
    }
    function example4() external {
        //external: call me from outside this contract
    }
}

contract demo2{
    uint public sum;
    
    constructor(uint x, uint y) {
        sum = add(x,y);
    }
    function add(uint x, uint y) private pure returns(uint) {
        return x+y;
    }
}