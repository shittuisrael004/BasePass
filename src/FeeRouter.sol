// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract FeeRouter {
    address public creator;
    address public protocol;

    constructor(address _creator, address _protocol) {
        creator = _creator;
        protocol = _protocol;
    }

    receive() external payable {
        uint256 half = msg.value / 2;
        payable(creator).transfer(half);
        payable(protocol).transfer(msg.value - half);
    }
}
