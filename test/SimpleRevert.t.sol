// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {SimpleRevert} from "../src/00a_SimpleRevert.sol";

contract SimpleRevertTest is Test {
    SimpleRevert public c;

    function setUp() public {
        c = new SimpleRevert();
    }

    function test_SimpleRevert() public {
        vm.expectRevert();
        c.main();
    }
}
