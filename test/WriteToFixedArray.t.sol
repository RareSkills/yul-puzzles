// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {WriteToFixedArray} from "../src/04d_WriteToFixedArray.sol";

contract WriteToFixedArrayTest is Test {
    WriteToFixedArray public c;

    function setUp() public {
        c = new WriteToFixedArray();
    }

    function test_WriteToFixedArray(uint256 v, uint256 w, uint256 x, uint256 y, uint256 z, uint256 i) public {
        vm.assume(i < 5);
        uint256[5] memory a = [v, w, x, y, z];

        c.main(a);
        assertEq(a[i], c.getter()[i]);
    }
}
