// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

interface IERC721Lite {
    function ownerOf(uint256) external view returns (address);
}

contract AccessController {
    function hasAccess(
        address nft,
        uint256 tokenId,
        address user
    ) external view returns (bool) {
        return IERC721Lite(nft).ownerOf(tokenId) == user;
    }
}
