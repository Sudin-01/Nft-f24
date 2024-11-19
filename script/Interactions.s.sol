// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

import {Script} from "forge-std/Script.sol";
import {BasicNFT} from "../src/BasicNFT.sol";
import {DevOpsTools} from "lib/foundry-devops/src/DevOpsTools.sol";

contract MintBasicNft is Script {
    string public constant PUG =
        "ipfs://bafybeig37ioir76s7mg5oobetncojcm3c3hxasyd4rvid4jqhy4gkaheg4/?filename=0-PUG.json";

    // function run() external {
    //     // address mostrecentlydeployed = DevOpsTools.get_most_recent_deployment(
    //     //     "BasicNFT",
    //     //     block.chainid
    //     // );
    //     address mostrecentlydeployed = 0xa5f9d9e15fcbe6b96b5cd2d46389c7a311959c10;
    //     mintNftOnContract(mostrecentlydeployed);
    // }
    function run() external {
        address mostrecentlydeployed = 0xA5f9D9E15FcBE6b96b5cd2d46389C7a311959C10;
        mintNftOnContract(mostrecentlydeployed);
    }

    function mintNftOnContract(address contractAddress) public {
        vm.startBroadcast();
        BasicNFT(contractAddress).mintNft(PUG);
        vm.stopBroadcast();
    }
}
