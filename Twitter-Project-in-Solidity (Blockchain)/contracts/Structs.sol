// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract TeslaRegistry {
    // Define the Tesla struct
    struct Tesla {
        string model;
        uint256 year;
        string color;
        uint256 mileage;
        string vin;
    }

    // Array to store Tesla records
    Tesla[] public teslas;

    // Function to add a new Tesla record
    function addTesla(
        string memory model,
        uint256 year,
        string memory color,
        uint256 mileage,
        string memory vin
    ) public {
        Tesla memory newTesla = Tesla({
            model: model,
            year: year,
            color: color,
            mileage: mileage,
            vin: vin
        });

        teslas.push(newTesla);
    }
}
