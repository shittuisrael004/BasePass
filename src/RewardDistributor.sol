// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {RewardToken} from "./RewardToken.sol";

contract RewardDistributor {
    RewardToken public token;

    constructor(address tokenAddress) {
        token = RewardToken(tokenAddress);
    }

    function distribute(address to, uint256 amount) external {
        token.mint(to, amount);
    }
}
