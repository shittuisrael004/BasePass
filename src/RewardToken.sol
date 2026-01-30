// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract RewardToken is ERC20 {
    address public distributor;

    constructor() ERC20("BasePass Reward", "BPR") {
        distributor = msg.sender;
    }

    function mint(address to, uint256 amount) external {
        require(msg.sender == distributor, "Not distributor");
        _mint(to, amount);
    }
}
