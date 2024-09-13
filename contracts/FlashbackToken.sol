// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract FlashbackToken is ERC20 {
    constructor() ERC20("Flashbk Token", "FBK") {
        uint256 initialSupply = 1000000 * (10 ** uint256(decimals())); // 1 million tokens
        _mint(msg.sender, initialSupply);
    }
}