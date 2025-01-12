// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {ReadFromPacked128} from "../src/04o_ReadFromPacked128.sol";

contract ReadFromPacked128Test is Test {
    ReadFromPacked128 public c;

    function setUp() public {
        c = new ReadFromPacked128();
    }

    function test_ReadFromPacked128(uint128 v, uint128 w) public {
        c.setValue(v, w);

        uint256 r = c.main();
        assertEq(r, w);
    }
}
