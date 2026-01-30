// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract TreasuryVault {
    receive() external payable {}

    function withdraw(address payable to, uint256 amount) external {
        to.transfer(amount);
    }
}
