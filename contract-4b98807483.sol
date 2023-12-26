// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts@5.0.1/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts@5.0.1/token/ERC20/extensions/ERC20Permit.sol";
import "@openzeppelin/contracts@5.0.1/access/Ownable.sol";

contract Pigment is ERC20, ERC20Permit, Ownable {
    constructor(address initialOwner)
        ERC20("Pigment", "PGMT")
        ERC20Permit("Pigment")
        Ownable(initialOwner)
    {
        _mint(msg.sender, 6200000000000 * 10 ** decimals());
    }
}
