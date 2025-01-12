// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.13;

import {Test, console, Vm} from "forge-std/Test.sol";
import {EventWithIndexedData} from "../src/05c_EventWithIndexedData.sol";

contract EventWithIndexedDataTest is Test {
    EventWithIndexedData public c;

    function setUp() public {
        c = new EventWithIndexedData();
    }

    function test_EventWithIndexedData(address _emitter, bytes32 _id, uint256 _number) public {
        vm.recordLogs();
        Vm.Log[] memory entries = vm.getRecordedLogs();

        c.main(_emitter, _id, _number);

        entries = vm.getRecordedLogs();

        assertEq(entries.length, 1);
        assertEq(entries[0].topics.length, 3, "length of topics is not three");
        assertEq(entries[0].topics[0], keccak256("MyEvent(address,bytes32,uint256)"), "incorrect event hash");
        assertEq(entries[0].topics[1], bytes32(uint256(uint160(_emitter))), "incorrect topic1");
        assertEq(entries[0].topics[2], _id, "incorrect topic2");
        assertEq(abi.decode(entries[0].data, (uint256)), _number, "incorrect logged data");
    }
}
