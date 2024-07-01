// SPDX-License-Identifier: MIT

pragma solidity ^0.8.26;

// make a contract called calculator
//create result variable to store result
//create function to add , subtract, multiply, divide , percentage
//create a function to get result

// Define a contract called Calculator
contract Calculator {
    uint256 private result;

    // Constructor to initialize the result variable to 0
    constructor() {
        result = 0;
    }

    // Function to add a number to the result
    function add(uint256 num) public {
        result += num;
    }

    // Function to subtract a number from the result
    function subtract(uint256 num) public {
        result -= num;
    }

    // Function to multiply the result by a number
    function multiply(uint256 num) public {
        result *= num;
    }

    // Function to divide the result by a number
    function divide(uint256 num) public {
        require(num != 0, "Cannot divide by zero");
        result /= num;
    }

    // Function to get the percentage (modulus) of the result
    function percentage(uint256 num) public {
        require(num != 0, "Cannot take modulus by zero");
        result %= num;
    }

    // Function to get the current result
    function getResult() public view returns (uint256) {
        return result;
    }
}
