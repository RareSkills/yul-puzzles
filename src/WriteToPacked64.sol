// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.13;

contract WriteToPacked64 {
    uint64 public someValue1 = 7;
    uint64 public writeHere = 1;
    uint64 public someValue2 = 7;
    uint64 public someValue3 = 7;

    function main(uint256 v) external {
        assembly {
            // your code here
            // change the value of `writeHere` storage variable to `v`
            // be careful not to alter the value of `someValue` variable

            // 0x00-0x20 = (someValue3, someValue2, writeHere, someValue1)
            mstore(0x00, sload(someValue1.slot))

            // Use 0x20-0x40 as scratch space
            // 0x20-0x30 = (v, someValue1)
            mstore(0x20, shl(192, v))
            mstore(0x28, mload(0x18))

            // 0x00-0x20 = (someValue3, someValue2, v, someValue1)
            mstore(0x10, mload(0x20))
            sstore(someValue1.slot, mload(0x00))
        }
    }
}
