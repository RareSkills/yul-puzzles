// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.13;

contract AnonymonusEventWithData {
    // EMIT ME!!!
    event MyEvent(uint256 num);

    function main(uint256 num) external {
        assembly {
            // your code here
            // emit the `MyEvent(uint256)` without using the event hash as a topic.
            // Anonymous events don't have the event signature (topic0) included.
            // Hint: Use log0 to emit the event with only the data.

            mstore(0x00, num) // Store the num value at memory location 0x00
            log0(0x00, 0x20) // Emit the event with no topics and the data at 0x00 with length 0x20
        }
    }
}
