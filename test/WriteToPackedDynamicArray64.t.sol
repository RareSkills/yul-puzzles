// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {WriteToPackedDynamicArray64} from "../src/WriteToPackedDynamicArray64.sol";

contract WriteToPackedDynamicArray64Test is Test {
    WriteToPackedDynamicArray64 public c;

    function setUp() public {
        c = new WriteToPackedDynamicArray64();
    }

    function test_WriteToPackedDynamicArray64() public {
        uint64[] memory v = new uint64[](5);
        v[0] = 3;
        v[1] = 65;
        v[2] = 3;
        v[3] = 76;
        v[4] = 75;

        c.main(v[0], v[1], v[2], v[3], v[4]);
        assertEq(v[3], c.writeHere(3));
    }
}
