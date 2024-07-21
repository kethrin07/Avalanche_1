# SimpleStorage Smart Contract

**SimpleStorage** is a basic smart contract that demonstrates Solidity’s error-handling mechanisms (`require()`, `assert()`, and `revert()`). It allows users to store and update a value while showing how to validate conditions and handle errors effectively. This contract is ideal for understanding fundamental error-handling in Solidity.
## Description

The **SimpleStorage** smart contract serves as an educational tool to illustrate the fundamental error-handling mechanisms in Solidity. It provides a straightforward implementation to store and manage a numeric value, showcasing practical use cases of `require()`, `assert()`, and `revert()` for error management. The contract includes a `storeValue` function that uses `require()` to enforce that only positive values are accepted, thereby preventing invalid inputs. The `updateValue` function, restricted to the contract owner, uses both `require()` to ensure proper access control and `assert()` to verify that the stored value meets expected conditions. Additionally, the `triggerError` function is designed to always revert with a custom message, demonstrating how to handle unexpected errors. Lastly, the `getStoredValue` function provides a way to retrieve the current value stored in the contract. This project is ideal for understanding the practical application of error-handling statements in Solidity and for learning how to build basic smart contracts with robust error-checking mechanisms.

## Getting Started

### Executing program

#### How to Run the Program

To run and interact with the **SimpleStorage** smart contract, follow these step-by-step instructions using Remix IDE:

#### Step-by-Step Instructions

1. **Open Remix IDE**:
   - Go to [Remix IDE](https://remix.ethereum.org/).

2. **Create a New File**:
   - In the Remix IDE file explorer, click on the "contracts" folder.
   - Click the "+" icon or "New File" button to create a new file.
   - Name the file `SimpleStorage.sol`.

3. **Paste the Contract Code**:
   - Copy the provided SimpleStorage contract code.
   - Paste it into the newly created `SimpleStorage.sol` file in Remix IDE.

4. **Compile the Contract**:
   - Navigate to the "Solidity Compiler" tab on the left sidebar.
   - Ensure the compiler version is set to `0.8.0` or higher.
   - Click the "Compile SimpleStorage.sol" button.

5. **Deploy the Contract**:
   - Go to the "Deploy & Run Transactions" tab on the left sidebar.
   - Ensure the environment is set to "Remix VM (Cancun)".
   - Click the "Deploy" button to deploy the contract to the local in-memory blockchain.

6. **Interact with the Contract**:
   - After deployment, you will see the deployed contract instance in the "Deployed Contracts" section.
   
   **a. Store a Value**:
   - Enter a positive numeric value in Wei in the "Value" field above the function buttons.
   - Click the `donate` button to send Ether and store the value.

   **b. Update the Stored Value**:
   - Ensure you are using the account that deployed the contract (the owner).
   - Enter a positive numeric value in Wei in the "Value" field.
   - Click the `updateValue` button.

   **c. Trigger an Error**:
   - Click the `triggerError` button to execute the function that always reverts.

   **d. Get the Stored Value**:
   - Click the `getStoredValue` button to retrieve and view the current stored value.

By following these steps, you will be able to deploy and interact with the **SimpleStorage** contract, testing its functionality and observing the error-handling mechanisms in action.

## Authors

Kethrin Naharwal
