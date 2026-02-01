// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract GovernanceToken is ERC20 {
    constructor() ERC20("BasePass Gov", "BPG") {
        _mint(msg.sender, 100_000_000 ether);
    }

    function mint() public {
        _mint(msg.sender, 100_000_000 ether);
    }
}
