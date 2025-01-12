// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.13;

import {Test, console, Vm} from "forge-std/Test.sol";
import {EventWithData} from "../src/05b_EventWithData.sol";

contract EventWithDataTest is Test {
    EventWithData public c;

    function setUp() public {
        c = new EventWithData();
    }

    function test_EventWithData(uint256 x) public {
        vm.recordLogs();
        Vm.Log[] memory entries = vm.getRecordedLogs();

        c.main(x);

        entries = vm.getRecordedLogs();

        assertEq(entries.length, 1);
        assertEq(entries[0].topics.length, 1, "length of topics is not one");
        assertEq(entries[0].topics[0], keccak256("MyEvent(uint256)"), "incorrect event hash");
        assertEq(abi.decode(entries[0].data, (uint256)), x, "incorrect logged data");
    }
}
