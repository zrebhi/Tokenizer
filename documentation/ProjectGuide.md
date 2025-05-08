# Tokenizer Project: Step-by-Step Guide

This document provides a step-by-step guide to completing the Tokenizer project.

## Phase 1: Project Setup & Environment Configuration

1.  **Project Directory & Git:** Create the project directory (e.g., `tokenizer-project`) and initialize a Git repository (`git init`). Create a `.gitignore` file.
2.  **Development Environment:** Use Remix IDE (https://remix.ethereum.org/) as the primary development environment.
3.  **Wallet Setup (MetaMask):** Install the MetaMask browser extension (https://metamask.io/). Add the **BNB Smart Chain (BSC) Testnet** network to MetaMask using network details found online (search "Add BSC Testnet to MetaMask").
4.  **Obtain Test BNB:** Get test BNB (tBNB) for gas fees from a BSC Testnet Faucet. The official BNB Chain Testnet Faucet is recommended: `https://www.bnbchain.org/en/testnet-faucet`. If you do not want to add a small amount of BNB to your wallet, try their discord server for a faucet bot.

## Phase 2: Smart Contract Development (Mandatory Token)

1.  **Project Structure:** Create the required `code`, `deployment`, and `documentation` folders within your project directory.
2.  **Write Token Contract (`code/My42Token.sol`):** Create the `My42Token.sol` contract file inside the `code` folder. The contract should inherit from OpenZeppelin's `ERC20` and `Ownable`, include a constructor setting the name (containing "42"), symbol, and initial supply, and include a `mint` function restricted by `onlyOwner`. Refer to the course materials or the provided `code/My42Token.sol` for the exact code.
3.  **Compile Contract:** Compile the contract in Remix IDE using the "Solidity Compiler" tab. Ensure the compiler version matches the pragma specified in the contract (e.g., `^0.8.26`).

## Phase 3: Local Testing

1.  **Test Basic Functionality:** In Remix IDE, use the "Deploy & Run Transactions" tab with the "Remix VM" environment. Deploy the contract (providing an initial supply). Test the standard functions (`name`, `symbol`, `totalSupply`, `balanceOf`, `transfer`, `approve`, `transferFrom`) and the `mint` function (testing owner restriction) using the Remix interface. The VM gives you multiple accounts to test with in the accounts dropdown.

## Phase 4: Testnet Deployment & Verification

1.  **Deploy to BSC Testnet:** In Remix IDE, switch the environment to "Injected Provider - MetaMask". Ensure MetaMask is connected and set to the BSC Testnet. Select your contract, enter the constructor arguments (initial supply), and click "Deploy". Confirm the transaction in MetaMask (this uses test BNB). Note the deployed contract address (e.g., `0xAdC85370BEBDd442150568FB611787522de2935b`).
2.  **Verify Contract on BSCScan Testnet:**
    *   Go to `https://testnet.bscscan.com/` and search for your deployed contract address.
    *   Navigate to the "Contract" tab and click "Verify and Publish".
    *   Select Compiler Type: `Solidity (Single file)`.
    *   Select the correct Compiler Version and License (`MIT`).
    *   **Flatten the Code:** Because the contract imports external libraries (OpenZeppelin), you need to provide the flattened source code. In Remix, right-click your `My42Token.sol` file in the file explorer and select "Flatten". Copy the entire generated flattened code.
    *   Paste the **flattened** code into the source code box on BscScan.
    *   Provide constructor arguments if prompted (ABI-encoded, usually found in Remix deployment logs).
    *   Complete the CAPTCHA and click "Verify and Publish".

## Phase 5: Interaction & Demonstration

1.  **Add Token to MetaMask:** Add the deployed token to your MetaMask wallet (on BSC Testnet) using the "Import tokens" feature and the contract address. The symbol and decimals should auto-fill.
2.  **Perform Basic Operations:** Create a second account in MetaMask. Use the "Send" feature to transfer some of your custom tokens from the deployer account to the second account. Verify balances in MetaMask and optionally on BscScan.

## Phase 6: Documentation (Mandatory)

1.  **Update `README.md`:** Create/update the `README.md` file at the root level. Include project details, choices made, the deployed contract address, a link to the verified contract on BscScan, instructions on adding the token to MetaMask, and basic usage instructions.
2.  **Populate `deployment/` Folder:** Create a `deployment/deployment_info.md` file and add the deployed contract address and network information.
3.  **Populate `documentation/` Folder:** Copy any relevant course files or create additional documentation (like guides or a simple whitepaper) in the `documentation/` folder.
4.  **Review Code Comments:** Ensure the code in `code/My42Token.sol` is well-commented, including NatSpec comments for functions.

## Phase 7: Bonus Implementation (Multisig)

1.  **Create Additional Test Accounts:** Create at least two additional accounts in MetaMask (on BSC Testnet) to serve as owners for the multisig wallet.
2.  **Setup Multisig Instance:** Use the official BNB Chain Multi-sig Wallet web application (`https://multisig.bnbchain.org/`). Connect your primary MetaMask account (on BSC Testnet) and create a new multisig wallet instance. Add your desired owner accounts (including the additional ones) and set the required signature threshold (e.g., 2-of-3). Note the address of the created multisig wallet (e.g., `0xB012556e718BED7025407a8a62a3C2F8256Fc95B`).
3.  **Transfer Token Ownership to Multisig:** Go to your verified token contract page on BscScan (`https://testnet.bscscan.com/address/YOUR_TOKEN_ADDRESS#code`). Use the "Write Contract" feature to connect your original deployer wallet and call the `transferOwnership` function, passing the address of your BNB Chain multisig wallet as the `newOwner`. You need to click the "Connect to Web3" button for this to work. Confirm the transaction in MetaMask.
4.  **Demonstrate Multisig Control:**
    *   Attempt to call an owner-restricted function (like `mint`) on the token contract directly from the original deployer account using BscScan's "Write Contract" feature. Verify that this transaction fails.
    *   Use the BNB Chain Multi-sig Wallet web application (`https://multisig.bnbchain.org/`) to initiate a transaction that calls the `mint` function on your token contract. 
    For this you will need to create a new transaction in the transaction builder. Paste the ABI of the contract, it can be found at `https://testnet.bscscan.com/address/YOUR_TOKEN_ADDRESS#code`. Enter the token contract address as the "To Address", select the `mint` function, and provide the recipient address and amount (remembering to scale the amount by 10^18, e.g., `50000000000000000000` for 50 tokens).
    *   Propose the transaction and have the required number of owners confirm it using their MetaMask accounts connected to the multisig app. Change account on metamask and refresh the page to switch to the other account.
    *   Execute the transaction once the threshold is met. Verify on BscScan that the recipient's token balance increased.

## Phase 8: Final Documentation Update

1.  Update the `README.md` and `deployment/deployment_info.md` files to reflect the final deployed contract address and the details of the successful multisig bonus implementation using the BNB Chain Multi-sig Wallet.


