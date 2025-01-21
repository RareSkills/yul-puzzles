// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {IsPrime} from "../src/IsPrime.sol";

contract IsPrimeTest is Test {
    IsPrime public c;

    function setUp() public {
        c = new IsPrime();
    }

    function test_IsPrime() public {
        uint8[10] memory a = [23, 30, 15, 17, 19, 12, 18, 31, 1, 43];
        bool[10] memory b = [true, false, false, true, true, false, false, true, false, true];

        for (uint256 i; i < 10; i++) {
            bool r = c.main(uint256(a[i]));
            assertEq(r, b[i]);
        }
    }
}
