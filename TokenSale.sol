// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TokenSale {
    address public owner;
    mapping(address => uint) public balances;
    uint public price;

    constructor(uint initialPrice) {
        owner = msg.sender;
        price = initialPrice;
    }

    // Function to buy tokens
    function buyTokens(uint amount) public payable {
        // Require statements to check conditions before proceeding
        require(amount > 0, "Amount must be greater than zero"); // Ensure the amount of tokens is greater than zero
        require(msg.value == amount * price, "Incorrect amount sent"); // Ensure the correct amount of Ether is sent
        
        balances[msg.sender] += amount; // Update the balance of the buyer
    }

    // Function for the owner to withdraw funds
    function withdrawFunds(uint amount) public {
        // Require statements to check conditions before proceeding
        require(msg.sender == owner, "Only the owner can withdraw funds"); // Ensure only the owner can call this function
        require(amount <= address(this).balance, "Insufficient contract balance"); // Ensure the contract has enough balance
        
        payable(msg.sender).transfer(amount); // Transfer the specified amount to the owner
    }

    // Function to set a new token price
    function setPrice(uint newPrice) public {
        // Require statement to ensure only the owner can call this function
        require(msg.sender == owner, "Only the owner can set the price");

        // Assert statement to check for valid price range
        assert(newPrice > 0 && newPrice <= 1000); // Ensure the new price is within a reasonable range
        
        price = newPrice; // Update the token price
    }

    // Function to stop the contract in an emergency
    function emergencyStop() public view {
        // Require statement to ensure only the owner can call this function
        require(msg.sender == owner, "Only the owner can stop the contract");

        // Revert statement to halt the function execution with a custom message
        revert("Contract stopped by owner"); // Indicate that the contract is stopped
    }
}
