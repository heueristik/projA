// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Ownable} from "@openzeppelin-contracts-5.4.0/access/Ownable.sol";

contract Counter is Ownable {
    uint256 public number;

    constructor(address initialOwner) Ownable(initialOwner) {}

    function setNumber(uint256 newNumber) public onlyOwner {
        number = newNumber;
    }

    function increment() public {
        number++;
    }
}
