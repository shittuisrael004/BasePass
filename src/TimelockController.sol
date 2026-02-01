// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract TimelockController {
    address public admin;

    uint256 public delay = 2 days;

    constructor() {
        admin = msg.sender;
    }

    function changeDelay(uint256 _days) public {
        require(msg.sender == admin, "Not Admin");
        delay = _days * 1 days;
    }
}
