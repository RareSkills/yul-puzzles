// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {RevertWithPanic} from "../src/00f_RevertWithPanic.sol";

contract RevertWithPanicTest is Test {
    RevertWithPanic public c;

    function setUp() public {
        c = new RevertWithPanic();
    }

    function test_RevertWithPanic() public {
        uint32 w = uint16(bytes2(keccak256(abi.encode(21658)))) + 1313349075;
        vm.expectRevert(abi.encodeWithSelector(bytes4(w), 0x01));
        c.main();
    }
}
