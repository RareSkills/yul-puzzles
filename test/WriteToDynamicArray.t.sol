// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {WriteToDynamicArray} from "../src/04f_WriteToDynamicArray.sol";

contract WriteToDynamicArrayTest is Test {
    WriteToDynamicArray public c;

    function setUp() public {
        c = new WriteToDynamicArray();
    }

    function test_WriteToDynamicArray(uint256 v, uint256 w, uint256 x, uint256 y, uint256 z, uint256 i) public {
        vm.assume(i < 5);

        uint256[] memory a = new uint256[](5);
        a[0] = v;
        a[1] = w;
        a[2] = x;
        a[3] = y;
        a[4] = z;

        c.main(a);
        assertEq(a[i], c.getter()[i]);
    }
}
