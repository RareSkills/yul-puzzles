// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {Double} from "../src/01a_Double.sol";

contract DoubleTest is Test {
    Double public c;

    function setUp() public {
        c = new Double();
    }

    function test_Double(uint256 x) public {
        vm.assume(x < type(uint256).max / 2);
        uint256 r = c.main(x);
        assertEq(r, 2 * x);
    }
}
