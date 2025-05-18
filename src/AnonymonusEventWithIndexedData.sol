// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.13;

contract AnonymonusEventWithIndexedData {
    // EMIT ME!!!
    event MyEvent(address indexed emitter, bytes32 indexed id, uint256 num);

    function main(address emitter, bytes32 id, uint256 num) external {
        assembly {
            // your code here
            // emit the `MyEvent(address,bytes32,uint256)` event.
            // Hint: Use `log3` to emit the event with three parameters, without including the event signature (topic0).
            // Since this is an anonymous event, it does not include the event hash (topic0).
            // include the data payload.
            mstore(0x00,num)
            log3(0x00,0x20,0x00,emitter,id)
    
    }
}
}
