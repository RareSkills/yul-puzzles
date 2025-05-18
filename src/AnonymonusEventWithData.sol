// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.13;

contract AnonymonusEventWithData {
    // EMIT ME!!!
    event MyEvent(uint256 num);

    function main(uint256 num) external {
        assembly {
            mstore(0x00,num)
            log0(0x00,0x20)
        }
    }
}