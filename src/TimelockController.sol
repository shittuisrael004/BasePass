// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract TimelockController {
    address public ADMIN;

    uint256 public delay = 2 days;

    constructor() {
        ADMIN = msg.sender;
    }

    function changeDelay(uint256 _days) public {
        require(msg.sender == ADMIN, "Not authorized");
        delay = _days * 1 days;
    }
}
