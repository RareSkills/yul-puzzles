// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.13;

import {Test, console, Vm} from "forge-std/Test.sol";
import {AnonymonusEventWithData} from "../src/05f_AnonymonusEventWithData.sol";

contract AnonymonusEventWithDataTest is Test {
    AnonymonusEventWithData public c;

    function setUp() public {
        c = new AnonymonusEventWithData();
    }

    function test_AnonymonusEventWithData(uint256 x) public {
        vm.recordLogs();
        Vm.Log[] memory entries = vm.getRecordedLogs();

        c.main(x);

        entries = vm.getRecordedLogs();

        assertEq(entries.length, 1);
        assertEq(entries[0].topics.length, 0, "length of topics is not zero");
        assertEq(abi.decode(entries[0].data, (uint256)), x, "incorrect logged data");
    }
}
