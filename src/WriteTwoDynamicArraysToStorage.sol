// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.13;

contract WriteTwoDynamicArraysToStorage {
    uint256[] public writeHere1;
    uint256[] public writeHere2;

    function main(uint256[] calldata x, uint256[] calldata y) external {
        assembly {
            // your code here
            // write the dynamic calldata array `x` to storage variable `writeHere1` and
            // dynamic calldata array `y` to storage variable `writeHere2`

            // Write length
            sstore(writeHere1.slot, x.length)
            mstore(0x00, writeHere1.slot)
            let slot := keccak256(0x00, 0x20)
            // Write values
            for { let i := 0 } lt(i, x.length) { i := add(i, 1) } {
                sstore(add(slot, i), calldataload(add(x.offset, mul(i, 0x20))))
            }

            // Write length
            sstore(writeHere2.slot, y.length)
            mstore(0x00, writeHere2.slot)
            slot := keccak256(0x00, 0x20)
            // Write values
            for { let i := 0 } lt(i, y.length) { i := add(i, 1) } {
                sstore(add(slot, i), calldataload(add(y.offset, mul(i, 0x20))))
            }
        }
    }
}
