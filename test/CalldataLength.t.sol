// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {CalldataLength} from "../src/CalldataLength.sol";

contract CalldataLengthTest is Test {
    CalldataLength public c;

    function setUp() public {
        c = new CalldataLength();
    }

    function test_CalldataLength(bytes calldata x) public {
        uint256 length = c.main(x);
        assertEq(length, msg.data.length);
    }
}
