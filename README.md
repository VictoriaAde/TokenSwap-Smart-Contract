# TokenSwap Smart Contract

## Overview

The TokenSwap smart contract facilitates the swapping of two ERC-20 tokens in a secure and controlled manner. It is built on the Ethereum blockchain and designed to be owned by a single entity. The contract includes functions for swapping tokens and checking the current balances of the tokens held by the contract.

## Features

- Swapping ERC-20 tokens: The `swapTokens` function allows the owner to initiate the swap of specified amounts of two different ERC-20 tokens.
- Balance checking: The `getContractBalance` function enables external parties to view the current balances of the two tokens held by the contract.

## Deployment

To deploy the TokenSwap contract, follow these steps:

1. Deploy the contract on a testnet or the Ethereum mainnet using Remix IDE or other Ethereum development tools.
2. Provide the addresses of the two ERC-20 tokens and the initial owner address during deployment.
3. Confirm the deployment and wait for the transaction to be mined.

## Interacting with the Contract

### Swapping Tokens

After deployment, the owner can initiate token swaps using the `swapTokens` function. The function requires specifying the amounts of the two tokens to be swapped. Ensure that the owner's address has sufficient balances and has approved the contract to spend the tokens.

### Checking Contract Balances

External parties can check the current balances of the two tokens held by the contract using the `getContractBalance` function. This is a read-only function and does not modify the contract's state.

## Testing Using Remix IDE

1. Open Remix IDE (https://remix.ethereum.org/).
2. Create a new file for the TokenSwap contract or copy the contract code into a new file.
3. Deploy the contract by selecting the appropriate environment (e.g., JavaScript VM, Injected Web3, etc.).
4. Provide the addresses of two ERC-20 tokens and the initial owner address.
5. Deploy the contract and wait for the transaction to be mined.
6. Interact with the contract by calling the `swapTokens` function and checking balances using the Remix interface.

### Viewing the Contract on Etherscan
You can view the contract on Etherscan by visiting the following [link](https://sepolia.etherscan.io/tx/0xfcb3e4fab28fc2e68273e4c135f09cc28cacff6f381db36c13f65c7c2b7f9e6c).



