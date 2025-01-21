// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.13;

import {Test, console, Vm} from "forge-std/Test.sol";
import {EventWithComplexData} from "../src/EventWithComplexData.sol";

contract EventWithComplexDataTest is Test {
    EventWithComplexData public c;

    function setUp() public {
        c = new EventWithComplexData();
    }

    function test_EventWithComplexData(address e, address[] memory p, uint256[] memory s) public {
        vm.recordLogs();
        Vm.Log[] memory entries = vm.getRecordedLogs();

        c.main(e, p, s);

        entries = vm.getRecordedLogs();

        assertEq(entries.length, 1);
        assertEq(entries[0].topics.length, 2, "length of topics is not two");
        assertEq(entries[0].topics[0], keccak256("MyEvent(address,address[],uint256[])"), "incorrect event hash");
        assertEq(entries[0].data, abi.encode(p, s), "incorrect logged data");
    }
}
