// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.13;

import {Test, console, Vm} from "forge-std/Test.sol";
import {AnonymonusEventWithComplexData} from "../src/05h_AnonymonusEventWithComplexData.sol";

contract AnonymonusEventWithComplexDataTest is Test {
    AnonymonusEventWithComplexData public c;

    function setUp() public {
        c = new AnonymonusEventWithComplexData();
    }

    function test_AnonymonusEventWithComplexData(address e, bytes32 id) public {
        AnonymonusEventWithComplexData.Person memory p = AnonymonusEventWithComplexData.Person({
            name: "RareSkills",
            age: 2,
            gender: AnonymonusEventWithComplexData.Gender.Male
        });

        vm.recordLogs();
        Vm.Log[] memory entries = vm.getRecordedLogs();

        c.main(e, id, p);

        entries = vm.getRecordedLogs();

        assertEq(entries.length, 1);
        assertEq(entries[0].topics.length, 3, "length of topics is not zero");
        assertEq(entries[0].topics[0], hex"", "event is doxxed");
        assertEq(entries[0].topics[1], bytes32(uint256(uint160(e))), "incorrect emitter");
        assertEq(entries[0].topics[2], id, "incorrect identifier");
        assertEq(entries[0].data, abi.encode(p), "incorrect logged data");
    }
}
