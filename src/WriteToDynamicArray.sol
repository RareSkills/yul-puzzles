// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.13;

contract WriteToDynamicArray {
    uint256[] writeHere;

    function main(uint256[] memory x) external {
        assembly {
            // your code here
            // store the values in the DYNAMIC array `x` in the storage variable `writeHere`
            // Hint: https://www.rareskills.io/post/solidity-dynamic
            let len := mload(x)
            let slot := writeHere.slot
            sstore(slot, len)
            slot := keccak256(slot, 0x20)
            for { let i := 0 } lt(i, len) { i := add(i, 1) } {
                sstore(
                    add(slot, i),
                    mload(add(x, mul(add(i, 1), 0x20)))
                )
            }
        }
    }

    function getter() external view returns (uint256[] memory) {
        return writeHere;
    }
}
