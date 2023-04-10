// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract HelloWorld {
    string private greetings;
    uint private version = 0;

    constructor(string memory _greetings) {
        greetings = _greetings;
    }

    function greet() public view returns (string memory) {
        return greetings;
    }

    function versions() public view returns (uint) {
        return version;
    }

    function updateGreetings(string memory _newGreetings) public {
        greetings = _newGreetings;
        version++;
    }
}
