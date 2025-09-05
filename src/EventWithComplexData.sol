// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.13;

contract EventWithComplexData {
    // EMIT ME!!!
    event MyEvent(address indexed emitter, address[] players, uint256[] scores);

    function main(address emitter, address[] memory players, uint256[] memory scores) external {
        assembly {
            // your code here
            // emit the `MyEvent(address,address[],uint256[])` event
            // Hint: Use `log2` to emit the event with the hash as the topic0 and `emitter` as topic1, then the data

            // abi.encode(players,scores) =
            // players.offset scores.offset players.length [players] scores.length [scores] 

            // Need to manually compute the memory offsets for players and scores
            mstore(sub(players, 0x40), 0x40)
            mstore(sub(players, 0x20), add(0x60, mul(32, mload(players))))

            log2(sub(players, 0x40), 
                add(0x80, mul(32, add(mload(players), mload(scores)))), 
                0x06af3d8f9866c9f54dcf425d9da9f75849af90454a25bca9df5fb24d80683e6a, // keccak256("MyEvent(address,address[],uint256[])")
                emitter
            )
        }
    }
}
