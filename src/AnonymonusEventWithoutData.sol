// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.13;

contract AnonymonusEventWithoutData {
    // EMIT ME!!!
    event MyEvent();

    function main() external {
        assembly {
            // your code here
            // emit the `MyEvent()`. An anonymous event do not contain its event hash.
            // Hint: Use log0 since it allows us to emit events without providing any data or topics.

            log0(0x00, 0x00) // Emit the event with no topics and no data
        }
    }
}
