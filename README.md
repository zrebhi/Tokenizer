# Tokenizer Project: My Awesome 42 Token

## Project Overview
This repository contains the code and documentation for the "Tokenizer" project, a BEP-20 token implemented on the BNB Smart Chain Testnet. This project was completed as part of a subject requirement, demonstrating core blockchain development concepts including smart contract creation, testing, deployment, and multisignature control.

## Development Specifications

*   **Blockchain Platform:** BNB Smart Chain (BSC) Testnet. Chosen for its EVM compatibility, speed, and low transaction costs, making it suitable for development and testing.
*   **Solidity Version:** `^0.8.26`. A recent, stable version providing safety features like automatic overflow/underflow checks.
*   **Development Tool:** Remix IDE. Used for its ease of use, integrated compiler, debugger, and direct MetaMask integration for testing and deployment.
*   **Libraries:** OpenZeppelin Contracts (`ERC20` and `Ownable`). Used for secure, audited implementations of the BEP-20 standard and ownership control, significantly reducing development time and security risks.
*   **Token Design:** Implemented the BEP-20 standard. Included a `mint` function restricted to the owner using OpenZeppelin's `Ownable` contract, as required for the bonus phase.

## Deployment Details

*   **Network:** BNB Smart Chain (BSC) Testnet
*   **Deployed Contract Address:** `0xAdC85370BEBDd442150568FB611787522de2935b`
*   **Verified Contract on BscScan:** [https://testnet.bscscan.com/address/0xAdC85370BEBDd442150568FB611787522de2935b#code](https://testnet.bscscan.com/address/0xAdC85370BEBDd442150568FB611787522de2935b#code)

## How to Add the Token to MetaMask

1.  Open your MetaMask wallet and ensure it's connected to the **BSC Testnet**.
2.  Scroll down in your asset list and click the "Import tokens" link.
3.  Select the "Custom token" tab.
4.  Paste the contract address: `0xAdC85370BEBDd442150568FB611787522de2935b`
5.  The Token Symbol ("M42T") and Token Decimal (18) should auto-fill.
6.  Click "Add Custom Token", then "Import Tokens".

## Basic Usage

Once added to MetaMask, you can view your balance and use the "Send" feature to transfer tokens to other BSC Testnet addresses.

## Bonus Implementation: Multisignature Control

For the bonus phase, multisignature control was implemented for owner-restricted functions (like `mint`) by transferring ownership of the token contract to a multisig wallet.

*   **Multisig Solution:** BNB Chain Multi-sig Wallet (`https://multisig.bnbchain.org/`)
*   **Multisig Wallet Address:** `0xB012556e718BED7025407a8a62a3C2F8256Fc95B`
*   **Demonstration:**
    *   Ownership of the `My42Token` contract (`0xAdC85370BEBDd442150568FB611787522de2935b`) was transferred to the BNB Chain Multi-sig Wallet.
    *   Attempting to call the `mint` function directly from the original deployer account fails, confirming the transfer of control.
    *   Successfully initiated, confirmed (by multiple owners), and executed a `mint` transaction through the BNB Chain Multi-sig Wallet interface, demonstrating that the multisig wallet now controls the owner-restricted functions. Note that when calling functions like `mint` via the multisig interface, the amount needs to be specified in the token's smallest units (e.g., 50 followed by 18 zeros for 50 whole tokens).