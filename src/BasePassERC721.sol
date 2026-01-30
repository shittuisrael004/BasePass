// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract BasePassERC721 is ERC721, Ownable {
    uint256 public totalSupply;
    address public metadataRenderer;

    constructor(
        string memory name,
        string memory symbol,
        address creator
    ) ERC721(name, symbol) Ownable(creator) {
        transferOwnership(creator);
    }

    function mint(address to) external onlyOwner {
        totalSupply++;
        _mint(to, totalSupply);
    }

    function setMetadataRenderer(address renderer) external onlyOwner {
        metadataRenderer = renderer;
    }
}
