// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {LengthOfDynamicArray} from "../src/LengthOfDynamicArray.sol";

contract LengthOfDynamicArrayTest is Test {
    LengthOfDynamicArray public c;

    function setUp() public {
        c = new LengthOfDynamicArray();
    }

    function test_LengthOfDynamicArray(uint256[] memory x) public view {
        uint256 r = c.main(x);
        assertEq(r, x.length);
    }
}
