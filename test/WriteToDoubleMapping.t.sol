// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {WriteToDoubleMapping} from "../src/WriteToDoubleMapping.sol";

contract WriteToDoubleMappingTest is Test {
    WriteToDoubleMapping public c;

    function setUp() public {
        c = new WriteToDoubleMapping();
    }

    function test_WriteToDoubleMapping(address user, address token, uint256 balance) public {
        c.main(user, token, balance);
        assertEq(c.balances(user, token), balance);
    }
}
