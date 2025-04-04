//SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;


// payable keyword in solidity.
// as we know contracts have their own account, and this contracts can also recive ether.
// we need to make a function payable so the function can recive ether.
contract demo{
    //Transfer Ether to my contract
    function SendEtherToContract() public payable{
        //Now our function is ready to accept ether, and whatever ether will be transfered using this function will get automatically transfered to our contract.
    }

    function BalanceOfContract() public view returns(uint){
        return address(this).balance;
    }
}