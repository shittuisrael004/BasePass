// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script} from "forge-std/Script.sol";
import {BasePassERC721} from "../src/BasePassERC721.sol";
import {BasePassFactory} from "../src/BasePassFactory.sol";
import {TierManager} from "../src/TierManager.sol";
import {AccessController} from "../src/AccessController.sol";
import {MetadataRenderer} from "../src/MetadataRenderer.sol";

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


contract AccessControllerScript is Script {
    AccessController public accessController;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        accessController = new AccessController();

        vm.stopBroadcast();
    }
}


contract MetadataRendererScript is Script {
    MetadataRenderer public metadataRenderer;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        metadataRenderer = new MetadataRenderer();

        vm.stopBroadcast();
    }
}

