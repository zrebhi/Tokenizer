# Tokenizer Project: My Awesome 42 Token

[![BSC Testnet](https://img.shields.io/badge/Network-BSC_Testnet-yellow)](https://www.bnbchain.org/en)
[![Solidity 0.8.26](https://img.shields.io/badge/Solidity-0.8.26-blue)](https://docs.soliditylang.org/en/v0.8.26/)
[![OpenZeppelin](https://img.shields.io/badge/Library-OpenZeppelin-green)](https://docs.openzeppelin.com/contracts/4.x/)

## Project Overview
This repository contains the code and documentation for the "Tokenizer" project - a BEP-20 token implemented on the BNB Smart Chain Testnet.

✅ Core features demonstrated:
- Smart contract creation & testing
- BSC Testnet deployment
- Multisignature control implementation

## Technical Specifications
| Category           | Choice                          | Rationale                                                                 |
|--------------------|---------------------------------|---------------------------------------------------------------------------|
| Blockchain Platform| BNB Smart Chain (BSC) Testnet   | EVM compatibility, speed, and low transaction costs                      |
| Solidity Version   | `^0.8.26`                      | Stable version with automatic overflow/underflow checks                   |
| Development Tool   | Remix IDE                      | Integrated compiler, debugger, and direct MetaMask integration            |
| Key Libraries      | OpenZeppelin Contracts         | Audited implementations of ERC20 and Ownable for security and efficiency  |

## Deployment Information
**Contract Details**  
```solidity
Network:        BNB Smart Chain (BSC) Testnet
Contract:       0xAdC85370BEBDd442150568FB611787522de2935b
Verification:   https://testnet.bscscan.com/address/0xAdC85370BEBDd442150568FB611787522de2935b#code
```

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

## Advanced Features

### Multisignature Control
```solidity
Multisig Wallet: 0xB012556e718BED7025407a8a62a3C2F8256Fc95B
Platform:        https://multisig.bnbchain.org/
```

**Implementation Details**  
- Ownership transferred to multisig wallet
- `mint` function requires multisig approval
- Demonstration:
  - Original deployer cannot mint directly
  - Minting requires multiple approvals