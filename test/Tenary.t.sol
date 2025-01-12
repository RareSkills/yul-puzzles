// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {Tenary} from "../src/04c_Tenary.sol";

contract TenaryTest is Test {
    Tenary public c;

    function setUp() public {
        c = new Tenary();
    }

    function test_Tenary(uint256 x, uint256 y, uint256 z) public {
        if (x > y) {
            c.main(x, y, z);
            assertEq(10, c.result());
        } else if (y > z) {
            c.main(x, y, z);
            assertEq(20, c.result());
        } else {
            c.main(x, y, z);
            assertEq(30, c.result());
        }
    }
}
