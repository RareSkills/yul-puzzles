// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {MaxOfArray} from "../src/03b_MaxOfArray.sol";

contract MaxOfArrayTest is Test {
    MaxOfArray public c;

    function setUp() public {
        c = new MaxOfArray();
    }

    function test_MaxOfArray1(uint256[] memory x) public {
        vm.assume(x.length > 0);

        if (x.length == 0) {
            vm.expectRevert();
            c.main(x);
        } else {
            uint256 r = c.main(x);
            assertEq(r, s(x));
        }
    }

    function s(uint256[] memory v) internal returns (uint256) {
        uint256 e = v[0];
        for (uint256 i = 1; i < v.length; i++) {
            if (v[i] > e) {
                e = v[i];
            }
        }
        return e;
    }
}
