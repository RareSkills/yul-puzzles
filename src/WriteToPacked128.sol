// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.13;

contract WriteToPacked128 {
    uint128 public writeHere = 1;
    uint128 public someValue = 7;

    function main(uint256 v) external {
        assembly {
            // your code here
            // change the value of `writeHere` storage variable to `v`
            // be careful not to alter the value of `someValue` variable
            // Hint: storage slots are arranged sequentially. Determine the storage slot of `writeHere`
            // and use `sstore` to modify only the `writeHere` variable.

            // Actually Solidity stores in the storage slot like this (someValue, writeHere)
            // and writeHere.slot = someValue.slot            
            mstore(0x00, sload(writeHere.slot))
            mstore(0x10, shl(128, v))
            sstore(writeHere.slot, mload(0x00))
        }
    }
}
