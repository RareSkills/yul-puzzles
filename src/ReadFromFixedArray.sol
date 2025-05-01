// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.13;

contract ReadFromFixedArray {
    uint256[5] readMe;

    function setValue(uint256[5] calldata x) external {
        readMe = x;
    }

    function main(uint256 index) external view returns (uint256) {
        assembly {
            // your code here
            // read the value at the `index` in the fixed array `readMe`
            // and return it
            // Assume `index` is <= to the length of readMe
            // Hint: https://www.rareskills.io/post/solidity-dynamic
            mstore(0x00, sload(add(readMe.slot, index)))
            return(0x00, 0x20)
        }
    }
}
