## Getting Started

### Adding to MetaMask
1. Connect MetaMask to **BSC Testnet**
2. Click "Import tokens" in assets
3. Use these details:
   ```
   Contract Address: 0xAdC85370BEBDd442150568FB611787522de2935b
   Token Symbol:     M42T
   Decimals:         18
   ```

### Basic Usage
- View token balance in MetaMask
- Transfer tokens using the "Send" feature
- All transactions occur on BSC Testnet

### Interacting with the Smart Contract on BSCScan

You can interact directly with the smart contract functions on the BSC Testnet explorer.

1.  Go to the contract's verification page on BSCScan: [https://testnet.bscscan.com/address/0xAdC85370BEBDd442150568FB611787522de2935b#writeContract](https://testnet.bscscan.com/address/0xAdC85370BEBDd442150568FB611787522de2935b#writeContract)
2.  Scroll down to the "Write Contract" tab.
3.  Click on "Connect to Web3". A MetaMask pop-up should appear asking you to connect your wallet to BSCScan.
4.  Select the account you want to use and click "Next", then "Connect".
5.  Once connected, the functions under the "Write Contract" tab will become active.
6.  You can now interact with the contract's writable functions directly from this page. For example, to use the `approve` function to set an allowance for another address, you would:
    *   Find the `approve` function in the list.
    *   Enter the required parameters: `spender` (the address you are granting allowance to) and `amount` (the number of tokens the spender is allowed to transfer on your behalf, in the smallest unit, e.g., Wei for Ether or the token's equivalent).
    *   Click the "Write" button.
    *   Confirm the transaction in MetaMask.

Remember that interacting with the contract functions on the testnet requires testnet BNB for gas fees.
