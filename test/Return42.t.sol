// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {Return42} from "../src/Return42.sol";

contract Return42Test is Test {
    Return42 public c;

    function setUp() public {
        c = new Return42();
    }

    function test_Return42() public {
        uint256 r = c.main();
        assertEq(r, 42);
    }
}
