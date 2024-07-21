// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleStorage {
    address public owner;
    uint256 public storedValue;

    constructor() {
        owner = msg.sender;
        storedValue = 0;
    }

    // Function to store a value
    function storeValue(uint256 newValue) public {
        // Require statement to ensure the value is positive
        require(newValue > 0, "Value must be greater than zero");

        // Store the new value
        storedValue = newValue;
    }

    // Function to update the stored value, only for the owner
    function updateValue(uint256 newValue) public {
        // Require statement to ensure only the owner can update
        require(msg.sender == owner, "Only the owner can update the value");

        // Assert statement to check the new value is positive
        assert(newValue > 0);

        // Update the stored value
        storedValue = newValue;
    }

    // Function to trigger an error and revert the transaction
    function triggerError() public pure {
        // Revert statement to halt execution with a message
        revert("This function always reverts");
    }

    // Function to get the stored value
    function getStoredValue() public view returns (uint256) {
        return storedValue;
    }
}
