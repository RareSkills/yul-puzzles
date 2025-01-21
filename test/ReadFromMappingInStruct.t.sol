// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {ReadFromMappingInStruct} from "../src/ReadFromMappingInStruct.sol";

contract ReadFromMappingInStructTest is Test {
    ReadFromMappingInStruct public c;

    function setUp() public {
        c = new ReadFromMappingInStruct();
    }

    function test_ReadFromMappingInStruct(
        uint256 s1,
        uint128 s2,
        uint128 s3,
        uint256 s4,
        uint256 s5,
        uint256 i,
        uint256 v
    ) public {
        c.setValue(i, v, s1, s2, s3, s4, s5);

        uint256 r = c.main(i);
        assertEq(r, v);
    }
}
