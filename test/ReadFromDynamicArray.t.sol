// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {ReadFromDynamicArray} from "../src/04e_ReadFromDynamicArray.sol";

contract ReadFromDynamicArrayTest is Test {
    ReadFromDynamicArray public c;

    function setUp() public {
        c = new ReadFromDynamicArray();
    }

    function test_ReadFromDynamicArray(uint256 v, uint256 w, uint256 x, uint256 y, uint256 z, uint256 i) public {
        vm.assume(i < 5);

        uint256[] memory a = new uint256[](5);
        a[0] = v;
        a[1] = w;
        a[2] = x;
        a[3] = y;
        a[4] = z;

        c.setValue(a);
        uint256 r = c.main(i);
        assertEq(r, a[i]);
    }
}
