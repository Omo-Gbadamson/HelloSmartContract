//SPDX-License-Identifier: UNLICENSED

pragma solidity >= 0.7.3;

contract HelloWorld {
    //events - are used to trigger the events and handled by functions
    //states - are used to create variables, like tokens, nfts, etc
    //functions - are used to alter the variables states

    event messagechanged(string oldmsg, string newmsg);

    string public message;

    constructor(string memory firstmessage) {
        message = firstmessage;   
    }

    function update(string memory newmesssage) public {
        string memory oldmsg = message;
        message = newmesssage;

        emit messagechanged(oldmsg, newmesssage); //this part will trigger the event we want in our code

    }
}