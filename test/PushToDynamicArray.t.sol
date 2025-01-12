// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {PushToDynamicArray} from "../src/04i_PushToDynamicArray.sol";

contract PushToDynamicArrayTest is Test {
    PushToDynamicArray public c;

    function setUp() public {
        c = new PushToDynamicArray();
    }

    function test_PushToDynamicArray(uint256 v) public {
        uint256[7] memory a = [23, 4, 19, 3, 44, 88, v];

        c.main(v);
        assertEq(c.getter()[6], a[6]);
    }
}
