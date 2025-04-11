// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.13;

contract MaxOfArray {
    function main(uint256[] memory arr) external pure returns (uint256) {
        assembly {
            // your code here
            // return the maximum value in the array
            // revert if array is empty
            let max := 0
            let len := mload(arr)
            for { let i := 0 } lt(i, len) { i := add(i, 1) } {
                let arr_element := mload(add(add(arr, 0x20), mul(i, 0x20)))
                if gt(arr_element, max) {
                    max := arr_element
                }
            }
            mstore(0x00, max)
            return(0x00, 0x20)
        }
    }
}
