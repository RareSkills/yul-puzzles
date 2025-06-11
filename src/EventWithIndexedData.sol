// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.13;

contract EventWithIndexedData {
    // EMIT ME!!!
    event MyEvent(address indexed emitter, bytes32 indexed id, uint256 num);

    function main(address emitter, bytes32 id, uint256 num) external {
        assembly {
            // your code here
            // emit the `MyEvent(address,bytes32,uint256)` event
            // the event has three components: two indexed fields (`emitter`, `id`) and one non-indexed field (`num`)
            // use `log3` to emit the event with three topics:
            //  topic 0: The event signature hash (keccak256("MyEvent(address,bytes32,uint256)"))
            //  topic 1: The `emitter` address
            //  topic 2: The `id` bytes32 value
            // include the `number` field as the data payload

            mstore(0x00, num) // 0x00 -> num
            log3(0x00, 0x20, 0x044d482819499c9d5fde1245ce63873b1259fc52fc78651ccdcdf7392637d374, emitter, id)
        }
    }
}
