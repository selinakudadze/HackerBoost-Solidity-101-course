// SPDX-License-Identifier:MIT
pragma solidity ^0.8.25;

contract HelloArbitrum{
    string public message;

    constructor (string memory _message){
        message =_message;
    }

    function updateMessage(string memory _newMessage) public {
        message = _newMessage;
    }
}