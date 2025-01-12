// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {WriteToPacked64} from "../src/04r_WriteToPacked64.sol";

contract WriteToPacked64Test is Test {
    WriteToPacked64 public c;

    function setUp() public {
        c = new WriteToPacked64();
    }

    function test_WriteToPacked64(uint64 v) public {
        c.main(v);
        assertEq(v, c.writeHere());
    }
}
