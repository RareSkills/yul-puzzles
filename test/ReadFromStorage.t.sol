// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {ReadFromStorage} from "../src/04a_ReadFromStorage.sol";

contract ReadFromStorageTest is Test {
    ReadFromStorage public c;

    function setUp() public {
        c = new ReadFromStorage();
    }

    function test_ReadFromStorage(uint256 x) public {
        c.setValue(x);
        uint256 r = c.main();
        assertEq(r, x);
    }
}
