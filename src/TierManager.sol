// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract TierManager {
    mapping(uint256 => uint256) public tokenTier;

    function setTier(uint256 tokenId, uint256 tier) external {
        tokenTier[tokenId] = tier;
    }

    function getTier(uint256 tokenId) external view returns (uint256) {
        return tokenTier[tokenId];
    }
}
