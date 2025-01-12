// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {ReadFromPacked64} from "../src/04q_ReadFromPacked64.sol";

contract ReadFromPacked64Test is Test {
    ReadFromPacked64 public c;

    function setUp() public {
        c = new ReadFromPacked64();
    }

    function test_ReadFromPacked64(uint64 v, uint64 w, uint64 x, uint64 y) public {
        c.setValue(v, w, x, y);

        uint256 r = c.main();
        assertEq(r, x);
    }
}
