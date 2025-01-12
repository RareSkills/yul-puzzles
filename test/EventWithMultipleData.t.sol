// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.13;

import {Test, console, Vm} from "forge-std/Test.sol";
import {EventWithMultipleData} from "../src/05d_EventWithMultipleData.sol";

contract EventWithMultipleDataTest is Test {
    EventWithMultipleData public c;

    function setUp() public {
        c = new EventWithMultipleData();
    }

    function test_EventWithMultipleData(address _emitter, uint256 _num, bool _isActive) public {
        vm.recordLogs();
        Vm.Log[] memory entries = vm.getRecordedLogs();

        c.main(_emitter, _num, _isActive);

        entries = vm.getRecordedLogs();

        assertEq(entries.length, 1);
        assertEq(entries[0].topics.length, 1, "length of topics is not one");
        assertEq(entries[0].topics[0], keccak256("MyEvent(address,uint256,bool)"), "incorrect event hash");
        assertEq(entries[0].data, abi.encode(_emitter, _num, _isActive), "incorrect logged data");
    }
}
