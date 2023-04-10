// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/HelloWorld.sol";

contract HelloWorldTest is Test {
    HelloWorld helloWorld;

    function setUp() public {
        helloWorld = new HelloWorld("Foundry is awesome!");
    }

    function test_greetingIsCorrect() public {
        assertEq(helloWorld.greet(), "Foundry is awesome!");
    }

    function test_versionIsZero() public {
        assertEq(helloWorld.versions(), 0);
        emit log("hello");
    }

    function test_updateGreetings(string memory _greetings) public {
        helloWorld.updateGreetings(_greetings);
        assertEq(helloWorld.greet(), _greetings);
        assertEq(helloWorld.versions(), 1);
    }
}
