// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {ReadFromMapping} from "../src/04g_ReadFromMapping.sol";

contract ReadFromMappingTest is Test {
    ReadFromMapping public c;

    function setUp() public {
        c = new ReadFromMapping();
    }

    function test_ReadFromMapping(uint256 v, uint256 w, uint256 x, uint256 y, uint256 z, uint256 i) public {
        vm.assume(i < 5);
        uint256[5] memory a = [v, w, x, y, z];

        c.setValue(0, v);
        c.setValue(1, w);
        c.setValue(2, x);
        c.setValue(3, y);
        c.setValue(4, z);

        uint256 r = c.main(i);
        assertEq(r, a[i]);
    }
}
