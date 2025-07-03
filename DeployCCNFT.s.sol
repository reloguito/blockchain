//SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {Script} from "forge-std/Script.sol";
import {CCNFT} from "../src/CCNFT.sol";
import "forge-std/console.sol";

contract DeployCCNFT is Script {
    function run() external {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);

        // Desplegar CCNFT
        CCNFT ccnft = new CCNFT();
        console.log("CCNFT deployed at:", address(ccnft));

        vm.stopBroadcast();
    }
}