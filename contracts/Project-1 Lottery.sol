//SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;

contract Lottery{
    //Entities - Manager, Winner, Players
    address public manager;
    address payable[] public players;
    address payable public winner;

    constructor(){
        manager = msg.sender;
    }

    function participate() public payable{
        require(msg.value == 5 ether,"You Have To Pay 5 ether To Participate");
        players.push(payable(msg.sender));
    }

    function getbalance() public view returns(uint){
        require(manager == msg.sender,"You are not a manager");
        return address(this).balance;
    }

    function random() internal view returns(uint){
        return uint(keccak256(abi.encodePacked(block.difficulty,block.timestamp,players.length)));
    }

    function pickWinner() public{
        require(manager==msg.sender,"You are Not the manager");
        require(players.length >= 3,"Not Enough Players To Declare Winner");

        uint RandomNumber = random();
        uint index = RandomNumber%players.length;
        winner = players[index];
        winner.transfer(getbalance());
        players = new address payable[](0); // this will initiliaze the players array back to 0
    }
}