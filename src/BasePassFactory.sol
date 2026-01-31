// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "./BasePassERC721.sol";

contract BasePassFactory {
    address public owner;
    address[] public allClubs;

    event ClubCreated(address club, address creator);

    constructor() {
        owner = msg.sender;
    }

    function createClub(string memory name, string memory symbol) external returns (address) {
        BasePassERC721 club = new BasePassERC721(name, symbol, msg.sender);
        allClubs.push(address(club));
        emit ClubCreated(address(club), msg.sender);
        return address(club);
    }

    function getAllClubs() external view returns (address[] memory) {
        return allClubs;
    }
}
