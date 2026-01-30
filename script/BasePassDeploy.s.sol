// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script} from "forge-std/Script.sol";
import {BasePassERC721} from "../src/BasePassERC721.sol";
import {BasePassFactory} from "../src/BasePassFactory.sol";
import {TierManager} from "../src/TierManager.sol";

contract BasePassERC721Script is Script {
    BasePassERC721 public basePassERC721;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        basePassERC721 = new BasePassERC721("BasePass", "BASEPASS", msg.sender);

        vm.stopBroadcast();
    }
}


contract BasePassFactoryScript is Script {
    BasePassFactory public basePassFactory;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        basePassFactory = new BasePassFactory();

        vm.stopBroadcast();
    }
}


contract TierManagerScript is Script {
    TierManager public tierManager;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        tierManager = new TierManager();

        vm.stopBroadcast();
    }
}

