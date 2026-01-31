// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract PaymentSplitterV2 {
    address[] public payees;
    mapping(address => uint256) public shares;

    constructor(address[] memory _payees, uint256[] memory _shares) {
        for (uint256 i; i < _payees.length; i++) {
            payees.push(_payees[i]);
            shares[_payees[i]] = _shares[i];
        }
    }
}
