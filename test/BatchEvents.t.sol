// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.13;

import {Test, console, Vm} from "forge-std/Test.sol";
import {BatchEvents} from "../src/BatchEvents.sol";

contract BatchEventsTest is Test {
    BatchEvents public c;

    function setUp() public {
        c = new BatchEvents();
    }

    function test_BatchEvents(address[3] memory ee, bytes32[3] memory ii, uint256[3] memory nn) public {
        address[] memory e = new address[](3);
        e[0] = ee[0];
        e[1] = ee[1];
        e[2] = ee[2];

        bytes32[] memory i = new bytes32[](3);
        i[0] = ii[0];
        i[1] = ii[1];
        i[2] = ii[2];

        uint256[] memory n = new uint256[](3);
        n[0] = nn[0];
        n[1] = nn[1];
        n[2] = nn[2];

        vm.recordLogs();
        Vm.Log[] memory entries = vm.getRecordedLogs();

        c.main(e, i, n);

        entries = vm.getRecordedLogs();

        assertEq(entries.length, n.length);

        for (uint256 j; j < e.length; j++) {
            assertEq(entries[j].topics[0], keccak256("MyEvent(address,bytes32,uint256)"), "incorrect event hash");
            assertEq(entries[j].topics[1], bytes32(uint256(uint160(e[j]))), "incorrect emitter");
            assertEq(entries[j].topics[2], i[j], "incorrect identifier");
            assertEq(abi.decode(entries[j].data, (uint256)), n[j], "incorrect logged data");
        }
    }
}
