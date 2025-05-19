// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.13;

contract WriteToDoubleMapping {
    mapping(address user => mapping(address token => uint256 value)) public balances;

    function main(address user, address token, uint256 value) external {
        assembly {
            // your code here
            // set the `value` for a `user` and a `token`
            // Hint: https://www.rareskills.io/post/solidity-dynamic

            // Get storage slot for outer mapping
            mstore(0x00, user)
            mstore(0x20, balances.slot)
            mstore(0x20, keccak256(0x00, 0x40))
            // Get storage slot for nested mapping
            mstore(0x00, token)
            mstore(0x00, keccak256(0x00, 0x40))
            // sstore value
            sstore(mload(0x00), value)
        }
    }
}
