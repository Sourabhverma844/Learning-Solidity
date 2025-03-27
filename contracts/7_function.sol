// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 <0.9.0;

contract func{
    uint public num;
    uint abc;

    function functionnamesetter(uint _num) public{
        num = _num;
    }
    function functionnamegetter() public view returns(uint){
        return num;
    }
}

//whenever we reading a state variable we write view keyword here in example we are gonna read the state variable num inside our getter function we use view keyword there
// returns is diffrent from return
// returns is used when we want to tell the datatype we returning from this getter function
// and return is actually return the varibable i want to return from this function
// as we do not intialise num with any value then by default it is set to 0 as solidity does not have none or null
// in solidity whenever you create a state variable that is public in nature in that case solidity creates an automatic getter function for this state variable that whywhen we are calling this num value that is actually a getter function in refrence to solidity so when you call num it will return 100 
// as abc state variable is not public after compilatation solidity did not create a button. an not created any getter function for abc.
// when you call a setter function it creates a transection that need to be mined and cost gas becuase it changes the blockchain.