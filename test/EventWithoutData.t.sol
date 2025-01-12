// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.13;

import {Test, console, Vm} from "forge-std/Test.sol";
import {EventWithoutData} from "../src/05a_EventWithoutData.sol";

contract EventWithoutDataTest is Test {
    EventWithoutData public c;

    function setUp() public {
        c = new EventWithoutData();
    }

    function test_EventWithoutData() public {
        vm.recordLogs();
        Vm.Log[] memory entries = vm.getRecordedLogs();

        c.main();

        entries = vm.getRecordedLogs();

        assertEq(entries.length, 1);
        assertEq(entries[0].topics.length, 1, "length of topics is not one");
        assertEq(entries[0].topics[0], keccak256("MyEvent()"), "incorrect event hash");
        assertEq(entries[0].data, hex"", "emit MyEvent() without data");
    }
}
