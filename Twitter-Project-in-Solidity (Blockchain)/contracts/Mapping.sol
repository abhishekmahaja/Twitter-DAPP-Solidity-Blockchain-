// SPDX-License-Identifier: MIT

pragma solidity ^0.8.26;

contract Mapping {
    // Mapping forn address to uint
    mapping(address => uint256) public myMap;

    function get(address _addr) public view returns (uint256) {
        // mapping always returns a value
        //if the value was never set, it will return the default value
        return myMap[_addr];
    }

    function set(address _addr, uint256 _i) public {
        //update the value of this value
        myMap[_addr] = _i;
    }

    function remove(address _addr) public {
        // reset the value to the defaut value
        delete myMap[_addr];
    }
}
