// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.13;

contract RevertWithError {
    function main() external pure {
        assembly {
            // revert the function with an error of type `Error(string)`
            // use "RevertRevert" as error message
            // Hint: The error type is a predefined four bytes. See https://www.rareskills.io/post/try-catch-solidity

            // First four byte of keccak256("Error(string)")
            mstore(0x00, 0x08c379a0)
            // Offset of string
            mstore(0x20, 0x20)
            // Length of string
            mstore(0x40, 0x0c)
            // UTF-8 encoding of "RevertRevert". Strings are stored in big-endian (MSB first)
            mstore(0x60, 0x5265766572745265766572740000000000000000000000000000000000000000)
            revert(0x1C, 0x64)
        }
    }
}