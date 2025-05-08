// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.13;

contract PopFromDynamicArray {
    uint256[] popFromMe = [23, 4, 19, 3, 44, 88];

    function main() external {
        assembly {
            // your code here
            // pop the last element from the dynamic array `popFromMe`
            // dont forget to clean the popped element's slot.
            // Hint: https://www.rareskills.io/post/solidity-dynamic

            // Edit length
            let len := sload(popFromMe.slot)
            sstore(popFromMe.slot, sub(len, 1))
            // Pop element
            mstore(0x00, popFromMe.slot)
            mstore(0x00, keccak256(0x00, 0x20))
            sstore(add(mload(0x00), sub(len, 1)), 0)
        }
    }

    function getter() external view returns (uint256[] memory) {
        return popFromMe;
    }

    function lastElementSlotValue(bytes32 s) external view returns (uint256 r) {
        assembly {
            r := sload(s)
        }
    }
}
