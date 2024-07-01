// SPDX-License-Identifier: MIT

// pragma solidity ^0.8.26;

contract Array {
    //     // Several ways to instantiate arrays
    //     uint[] public arr;
    //     uint[] public arr2 = [1, 2, 3];

    //     // Fixed-size array, all elements initialized to 0
    //     uint[10] public myFixedSizedArray;
    //     string[5] public names;

    //     // Function to get the value at a specific index of arr
    //     function get(uint i) public view returns (uint) {
    //         return arr[i];
    //     }

    //     // Function to get the entire arr array
    //     function getArr() public view returns (uint[] memory) {
    //         return arr;
    //     }

    //push the array data in main array

    //this is dynamic array it can resized
    uint256[] public dynamicArray;

    //this is fixed array it can not  resized
    uint256[5] public fixedArray;

    function addToDynamicArray(uint256 value) public {
        //add a new element to the end of the array
        dynamicArray.push(value);
    }

    function getDynamicArrayLength() public view returns (uint256) {
        //return the length of the dynamic array
        return dynamicArray.length;
    }
}
