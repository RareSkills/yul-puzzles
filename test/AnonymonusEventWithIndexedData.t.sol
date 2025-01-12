// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.13;

import {Test, console, Vm} from "forge-std/Test.sol";
import {AnonymonusEventWithIndexedData} from "../src/05g_AnonymonusEventWithIndexedData.sol";

contract AnonymonusEventWithIndexedDataTest is Test {
    AnonymonusEventWithIndexedData public c;

    function setUp() public {
        c = new AnonymonusEventWithIndexedData();
    }

    function test_AnonymonusEventWithIndexedData(address emitter, bytes32 id, uint256 num) public {
        vm.recordLogs();
        Vm.Log[] memory entries = vm.getRecordedLogs();

        c.main(emitter, id, num);

        entries = vm.getRecordedLogs();

        assertEq(entries.length, 1);
        assertEq(entries[0].topics.length, 3, "length of topics is not three");
        assertEq(entries[0].topics[0], hex"", "event is doxxed");
        assertEq(entries[0].topics[1], bytes32(uint256(uint160(emitter))), "incorrect topic1");
        assertEq(entries[0].topics[2], id, "incorrect topic2");
        assertEq(abi.decode(entries[0].data, (uint256)), num, "incorrect logged data");
    }
}
