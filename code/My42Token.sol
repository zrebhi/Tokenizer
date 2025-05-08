// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26; // Use a recent, stable version

// Import the core ERC20 contract and Ownable for access control
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

// Define your contract, inheriting from ERC20 and Ownable
contract My42Token is ERC20, Ownable {

    // Constructor: Called once when the contract is deployed
    // Sets the token name, symbol, and mints the initial supply to the deployer
    constructor(uint256 initialSupply) ERC20("My Awesome 42 Token", "M42T") Ownable(msg.sender) {
        // _mint is an internal function from the inherited ERC20 contract
        // It creates new tokens and assigns them to an address.
        // We multiply by 10**decimals() to handle token divisibility.
        // ERC20 defaults to 18 decimals.
        _mint(msg.sender, initialSupply * (10**decimals()));

        // msg.sender is the address deploying the contract.
        // Ownable(msg.sender) sets the deployer as the initial owner.
    }

    /**
     * @notice Allows the owner to mint additional tokens.
     * @param to The address to mint tokens to.
     * @param amount The amount of tokens to mint (in base units).
     */
    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
}