// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract TreasuryVault {
    receive() external payable {}

    function withdraw(address payable to, uint256 amount) external {
        (bool success,) = to.call{value: amount}("");
        require(success, "Call failed");
    }
}
