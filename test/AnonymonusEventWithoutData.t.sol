// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.13;

import {Test, console, Vm} from "forge-std/Test.sol";
import {AnonymonusEventWithoutData} from "../src/AnonymonusEventWithoutData.sol";

contract AnonymonusEventWithoutDataTest is Test {
    AnonymonusEventWithoutData public c;

    function setUp() public {
        c = new AnonymonusEventWithoutData();
    }

    function test_AnonymonusEventWithoutData() public {
        vm.recordLogs();
        Vm.Log[] memory entries = vm.getRecordedLogs();

        c.main();

        entries = vm.getRecordedLogs();

        assertEq(entries.length, 1);
        assertEq(entries[0].topics.length, 0, "length of topics is not zero");
        assertEq(entries[0].data, hex"", "emit MyEvent() without data");
    }
}
