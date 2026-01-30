// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script} from "forge-std/Script.sol";
import {BasePassERC721} from "../src/BasePassERC721.sol";

contract BasePassDeployScript is Script {
    BasePassERC721 public basePassERC721;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        basePassERC721 = new BasePassERC721("BasePass", "BASEPASS", msg.sender);

        vm.stopBroadcast();
    }
}
