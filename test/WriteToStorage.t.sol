// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {WriteToStorage} from "../src/WriteToStorage.sol";

contract WriteToStorageTest is Test {
    WriteToStorage public c;

    function setUp() public {
        c = new WriteToStorage();
    }

    function test_WriteToStorage(uint256 x) public {
        c.main(x);
        assertEq(c.writeHere(), x);
    }
}
