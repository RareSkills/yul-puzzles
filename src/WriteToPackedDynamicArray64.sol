// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.13;

contract WriteToPackedDynamicArray64 {
    uint64[] public writeHere;

    function main(uint64 v1, uint64 v2, uint64 v3, uint64 v4, uint64 v5) external {
        assembly {
            // your code here
            // write the code to store v1, v2, v3, v4, and v5 in the `writeHere` array in sequential order.
            // Hint: `writeHere` is a dynamic array, so you will need to access its length and use `mstore` or `sstore`
            // appropriately to push new values into the array.

            // Store length
            sstore(writeHere.slot, 5)

            // 0x00-0x20 - writeHere data storage slot
            mstore(0x00, writeHere.slot)
            mstore(0x00, keccak256(0x00, 0x20))

            // 0x20-0x40 - (v4, v3, v2, v1)
            mstore(0x20, shl(192, v4))
            mstore(0x28, shl(192, v3))
            mstore(0x30, shl(192, v2))
            mstore(0x38, shl(192, v1))

            sstore(mload(0x00), mload(0x20))
            sstore(add(mload(0x00), 1), shr(192, v5))
        }
    }
}
