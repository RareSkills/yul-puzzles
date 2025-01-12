// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {WriteToPacked128} from "../src/04p_WriteToPacked128.sol";

contract WriteToPacked128Test is Test {
    WriteToPacked128 public c;

    function setUp() public {
        c = new WriteToPacked128();
    }

    function test_WriteToPacked128(uint128 v) public {
        c.main(v);
        assertEq(v, c.writeHere());
    }
}
