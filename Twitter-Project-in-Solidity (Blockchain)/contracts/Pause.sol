// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract pausableToken {
    address public owner;
    bool public paused;
    mapping(address => uint256) public balances;

    constructor() {
        owner = msg.sender;
        paused = false;
        balances[owner] = 1000;
    }

    // only owner can change the length
    modifier onlyOwner() {
        require(msg.sender == owner, "YOU ARE NOT OWNER");
        _;
    }

    // check contract is paused or not
    modifier notPaused() {
        require(paused == false, "THE CONTRACT IS PAUSED ");
        _;
    }

    function pause() public onlyOwner {
        paused = true;
    }

    function unpaused() public onlyOwner {
        paused = false;
    }

    //use the not paused modifier in the function
    function transfer(address to, uint256 amount) public notPaused {
        require(balances[msg.sender] >= amount, "INSUFFICIENT BALANCE");

        balances[msg.sender] -= amount;
        balances[to] += amount;
    }
}
