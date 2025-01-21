// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {DoubleOrNothing} from "../src/DoubleOrNothing.sol";

contract DoubleOrNothingTest is Test {
    DoubleOrNothing public c;

    function setUp() public {
        c = new DoubleOrNothing();
    }

    function test_DoubleOrNothing(uint256 x) public {
        vm.assume(x < type(uint256).max / 2);
        uint256 r = c.main(x);
        if (x > 10) x = 0;
        assertEq(r, 2 * x);
    }
}
