// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {ReadFromFixedArray} from "../src/04c2_ReadFromFixedArray.sol";

contract ReadFromFixedArrayTest is Test {
    ReadFromFixedArray public c;

    function setUp() public {
        c = new ReadFromFixedArray();
    }

    function test_ReadFromFixedArray(uint256 v, uint256 w, uint256 x, uint256 y, uint256 z, uint256 i) public {
        vm.assume(i < 5);
        uint256[5] memory a = [v, w, x, y, z];

        c.setValue(a);
        uint256 r = c.main(i);
        assertEq(r, a[i]);
    }
}
