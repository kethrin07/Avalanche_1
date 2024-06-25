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

    function buyTokens(uint amount) public payable {
        require(amount > 0, "Amount must be greater than zero");
        require(msg.value == amount * price, "Incorrect amount sent");

        balances[msg.sender] += amount;
    }

    function withdrawFunds(uint amount) public {
        require(msg.sender == owner, "Only the owner can withdraw funds");
        require(amount <= address(this).balance, "Insufficient contract balance");

        payable(msg.sender).transfer(amount);
    }

    function setPrice(uint newPrice) public {
        require(msg.sender == owner, "Only the owner can set the price");

        // Use assert to check for valid price range
        assert(newPrice > 0 && newPrice <= 1000);

        price = newPrice;
    }

    function emergencyStop() view public {
        require(msg.sender == owner, "Only the owner can stop the contract");

        // Use revert with custom message to stop contract
        revert("Contract stopped by owner");
    }
}
