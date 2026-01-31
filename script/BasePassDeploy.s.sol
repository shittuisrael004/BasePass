// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script} from "forge-std/Script.sol";
import {BasePassERC721} from "../src/BasePassERC721.sol";
import {BasePassFactory} from "../src/BasePassFactory.sol";
import {TierManager} from "../src/TierManager.sol";
import {AccessController} from "../src/AccessController.sol";
import {MetadataRenderer} from "../src/MetadataRenderer.sol";
import {RewardToken} from "../src/RewardToken.sol";
import {RewardDistributor} from "../src/RewardDistributor.sol";
import {TreasuryVault} from "../src/TreasuryVault.sol";
import {FeeRouter} from "../src/FeeRouter.sol";

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


contract RewardTokenScript is Script {
    RewardToken public rewardToken;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        rewardToken = new RewardToken();

        vm.stopBroadcast();
    }
}


contract RewardDistributorScript is Script {
    RewardDistributor public rewardDistributor;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        rewardDistributor = new RewardDistributor(0xbE0135454c2fd9377174f2C512edbA4e30b4EDE2);

        vm.stopBroadcast();
    }
}


contract TreasuryVaultScript is Script {
    TreasuryVault public treasuryVault;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        treasuryVault = new TreasuryVault();

        vm.stopBroadcast();
    }
}


contract FeeRouterScript is Script {
    FeeRouter public feeRouter;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        feeRouter = new FeeRouter(0x937E5651c607dcc9f6a795705Cb352D969090a5d, 0x84397D9B99cA21cE5aa2776Db16cdf13921A85Ce);

        vm.stopBroadcast();
    }
}

