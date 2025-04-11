// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.13;

contract LengthOfDynamicArray {
    function main(uint256[] memory x) external view returns (uint256) {
        assembly {
            // your code here
            // return the length of array `x`
            // Hint: https://www.rareskills.io/post/solidity-dynamic
            mstore(0x00, mload(x))
            return(0x00, 0x20)
        }
    }
}
