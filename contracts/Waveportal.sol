pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract WavePortal{
    uint256 totalWaves;
    mapping(address => uint256) public WaveCount;
    constructor(){
        totalWaves = 0;
        console.log("Hi, I am a sample smart contract");
    }

    function wave() public {
        totalWaves++;
        console.log("%s has waved!", msg.sender);
        WaveCount[msg.sender]++;
        console.log("%s has sent his %d wave!!!", msg.sender, WaveCount[msg.sender]);
    }

    function getTotalWaves() public view returns (uint256) {
        console.log("We have %d total waves!", totalWaves);
        return totalWaves;
    }
}