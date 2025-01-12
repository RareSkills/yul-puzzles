// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {WriteTwoDynamicArraysToStorage} from "../src/04n_WriteTwoDynamicArraysToStorage.sol";

contract WriteTwoDynamicArraysToStorageTest is Test {
    WriteTwoDynamicArraysToStorage public c;

    function setUp() public {
        c = new WriteTwoDynamicArraysToStorage();
    }

    function test_WriteTwoDynamicArraysToStorage(uint256[] calldata x, uint256[] calldata y, uint256 i, uint256 j)
        public
    {
        vm.assume(i < x.length && j < y.length);

        c.main(x, y);
        assertEq(c.writeHere1(i), x[i]);
        assertEq(c.writeHere2(j), y[j]);
    }
}
