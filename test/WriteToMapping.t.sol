// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {WriteToMapping} from "../src/WriteToMapping.sol";

contract WriteToMappingTest is Test {
    WriteToMapping public c;

    function setUp() public {
        c = new WriteToMapping();
    }

    function test_WriteToMapping(uint256 i, uint256 v) public {
        c.main(i, v);
        assertEq(c.writeHere(i), v);
    }
}
