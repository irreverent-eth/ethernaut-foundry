// SPDX-License-Identifier: MIT
pragma solidity 0.8.21;

import {Script, console2} from "forge-std/Script.sol";
import "forge-std/Test.sol";
import {EthernautHelper} from "../setup/EthernautHelper.sol";

// NOTE You can import your helper contracts & create interfaces here

contract ForceSolution is Script, EthernautHelper {
    address constant LEVEL_ADDRESS = 0xb6c2Ec883DaAac76D8922519E63f875c2ec65575;
    uint256 heroPrivateKey = vm.envUint("PRIVATE_KEY");

    function run() public {
        vm.startBroadcast(heroPrivateKey);
        // NOTE this is the address of your challenge contract
        address challengeInstance = createInstance(LEVEL_ADDRESS);

        // YOUR SOLUTION HERE



        // SUBMIT CHALLENGE. (DON'T EDIT)
        bool levelSuccess = submitInstance(challengeInstance);
        require(levelSuccess, "Challenge not passed yet");
        vm.stopBroadcast();

        console2.log("LEVEL SUCCESSFUL, LUCKY #7!");
    }
}
