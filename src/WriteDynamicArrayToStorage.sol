// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.13;

contract WriteDynamicArrayToStorage {
    uint256[] public writeHere;

    function main(uint256[] calldata x) external {
        assembly {
            // your code here
            // write the dynamic calldata array `x` to storage variable `writeHere`
            
            // Write length
            let slot := writeHere.slot
            sstore(writeHere.slot, x.length)
            // Write values
            slot := keccak256(slot, 0x20)
            for { let i := 0 } lt(i, x.length) { i := add(i, 1) } {
                sstore(add(slot, i), calldataload(add(x.offset, mul(i, 0x20))))
            }
        }
    }
}

