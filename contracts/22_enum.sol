//SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;

/*
enums are user-defined data types that restrict the variable to have only one of the predefined values.

Syntax :- enum name_of_enum {value of enum}
*/

contract demo{
    enum Button{Not_Intrested, Likes_You, Comment}
    /* 
    The values here we seen inside this enum is uint type, so by default Not_Intrested is 0, and Likes_You is 1, 
    if we declare enum like this,
    enum Button{Not_Intrested, Likes_You, Comment}, 
    Then the value of Comment is 2 
    remember we have a limited set of value in enum, it means there is limit for giving the values like {Not_Intrested, Likes_You, Comment}
    */
    Button public like;

    function checkStatus() public view returns(Button){
        return like;
    }

    function changeStatus(Button _click) public{
        like = _click;
    }

    function returnStatus() public view returns(string memory){
        if(like == Button.Not_Intrested){
            return "She is Not_Intrested";
        }
        else{
            return "Luckey Guy ! She Likes You";
        }
    }
}