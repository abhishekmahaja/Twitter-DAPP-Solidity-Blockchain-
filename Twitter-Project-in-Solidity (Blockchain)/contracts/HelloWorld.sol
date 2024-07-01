// SPDX-License-Identifier: MIT

pragma solidity >=0.6.12 <0.9.0;

contract HelloWorld {
  /**
   * @dev Prints Hello World string
   */
  function print() public pure returns (string memory) {
    return "Hello World!";
  }
}

pragma solidity ^0.8.26;

contract Hellow {
  string public welcome = "Hellow World";
}
