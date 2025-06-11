// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.13;

contract EventWithData {
    // EMIT ME!!!
    event MyEvent(uint256 number);

    function main(uint256 _number) external {
        assembly {
            // your code here
            // emit the `MyEvent(uint256)` event
            // the event has one topic and one non-indexed field:
            //   topic 0: The event signature hash (keccak256("MyEvent(uint256)"))
            //   data: The `number` value as the payload
            // Hint: Use `log1` to emit the event with the hash as the topic and `number` as data

            mstore(0x00, _number) // 0x00 -> _number
            log1(0x00, 0x20, 0x6c2b4666ba8da5a95717621d879a77de725f3d816709b9cbe9f059b8f875e284)
        }
    }
}
