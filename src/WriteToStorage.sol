// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.13;

contract WriteToStorage {
    uint256 public writeHere;

    function main(uint256 x) external {
        assembly {
            // your code here
            // store the value `x` in the storage variable `writeHere`
            // Hint: use sstore opcode
            sstore(writeHere.slot, x)
        }
    }
}
