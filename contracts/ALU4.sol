//SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;

/*
This code Throw us an error
contract X {
  address otherContract;

  constructor(address _otherContract) payable {
    otherContract = _otherContract;
    _otherContract.call{ value: msg.value }("");
  }
}
*/

contract x {
    address otherContract;
    constructor(address _otherContract) payable {
        otherContract =  _otherContract;
        (bool success, ) = _otherContract.call{ value: msg.value}(" ");
        require(success);
    }
}