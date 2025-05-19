// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.13;

contract EventWithoutData {
    // EMIT ME!!!
    event MyEvent();

    function main() external {
        assembly {
            // your code here
            // emit the `MyEvent()` event
            // use `log1` to emit the event with one topic, which is the event's signature hash
            // Hint: Calculate the event signature hash using `keccak256("MyEvent()")`
            // The event hash serves as `topic0` in the log
            log1(0x00,0x00,0x4dbfb68b43dddfa12b51ebe99ab8fded620f9a0ac23142879a4f192a1b7952d2)
        }
    }
}
