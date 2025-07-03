//SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {Script} from "forge-std/Script.sol";
import {BUSD} from "../src/BUSD.sol";
import "forge-std/console.sol";

contract DeployBUSD is Script {
    function run() external {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);

        // Desplegar BUSD
        BUSD busd = new BUSD();
        console.log("BUSD deployed at:", address(busd));

        vm.stopBroadcast();
    }
}