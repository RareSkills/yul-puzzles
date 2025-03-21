// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.13;

contract CalldataLength {
    function main(bytes calldata) external pure returns (uint256) {
        assembly {
            // your code here
            // return the length of the calldata
            // hint: calldatasize opcode
            mstore(0x00, calldatasize())
            return(0x00, 0x20)
        }
    }
}
