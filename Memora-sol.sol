// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Memora is ERC20, Ownable {

    uint256 public constant MAX_SUPPLY = 250000000 * 10 ** 18;

    constructor() ERC20("Memora", "MEMORA") Ownable(msg.sender) {
        _mint(msg.sender, MAX_SUPPLY);
    }
}
