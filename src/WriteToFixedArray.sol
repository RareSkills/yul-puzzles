// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.13;

contract WriteToFixedArray {
    uint256[5] writeHere;

    function main(uint256[5] memory x) external {
        assembly {
            // your code here
            // store the values in the fixed array `x` in the storage variable `writeHere`
            // Hint: https://www.rareskills.io/post/solidity-dynamic
            let i := 0
            for {} lt(i, 5) { i := add(i, 1) } 
            {
                sstore(
                    add(writeHere.slot, i), 
                    mload(add(x, mul(i, 0x20)))
                ) 
            }
        }
    }

    function getter() external view returns (uint256[5] memory) {
        return writeHere;
    }
}
