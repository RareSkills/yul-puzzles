// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {MaxOfTwoValues} from "../src/01d_MaxOfTwoValues.sol";

contract MaxOfTwoValuesTest is Test {
    MaxOfTwoValues public c;

    function setUp() public {
        c = new MaxOfTwoValues();
    }

    function test_MaxOfTwoValues(uint256 x, uint256 y) public {
        vm.assume(x != y);
        uint256 r = c.main(x, y);
        if (x > y) assertEq(r, x);
        else assertEq(r, y);
    }
}
