# Smart Contract

This smart contract facilitates token purchases with Ether, enables price adjustments, and allows fund withdrawals, controlled by the contract owner.

## Description

This smart contract facilitates a decentralized token sale platform where users can purchase tokens by sending Ether. It includes functionalities such as buying tokens at a specified price, withdrawing funds by the contract owner, setting and adjusting token prices, and an emergency stop feature to halt contract operations when necessary. The contract ensures secure transactions through built-in checks for valid amounts and ownership verification, providing transparency and flexibility in managing token sales based on market demand and contract owner decisions.

## Getting Started

### Executing program

Here's a brief overview of how to execute the `TokenSale` smart contract:

1. **Setup**: Use Remix IDE or a similar Solidity development environment.

2. **Deployment**: Deploy the `TokenSale` contract with an initial token price parameter.

3. **Interactions**:
   - **Buying Tokens**: Users can buy tokens by sending Ether, with the contract verifying the correct amount.
   - **Withdrawing Funds**: The contract owner can withdraw Ether from the contract balance.
   - **Setting Price**: The contract owner can set and adjust the token price within a specified range.
   - **Emergency Stop**: An emergency stop function allows the owner to halt contract operations if necessary.

4. **Execution**: Ensure transactions are confirmed through your Web3 provider, and verify contract behavior through Remix IDE's transaction logs and console outputs.

## Authors

Kethrin Naharwal
