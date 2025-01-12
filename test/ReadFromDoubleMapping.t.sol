// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {ReadFromDoubleMapping} from "../src/04k_ReadFromDoubleMapping.sol";

contract ReadFromDoubleMappingTest is Test {
    ReadFromDoubleMapping public c;

    function setUp() public {
        c = new ReadFromDoubleMapping();
    }

    function test_ReadFromDoubleMapping(address v, address w, address x, address y, address z, uint256 i) public {
        vm.assume(i < 5);
        address[5] memory a = [address(0xB0B), address(0xd0B), address(0xdeed), address(0xbed), address(0xdead)];
        address[5] memory b = [v, w, x, y, z];
        uint8[5] memory d = [11, 100, 30, 41, 96];

        c.setValue(a[0], v, 11);
        c.setValue(a[1], w, 100);
        c.setValue(a[2], x, 30);
        c.setValue(a[3], y, 41);
        c.setValue(a[4], z, 96);

        uint256 r = c.main(a[i], b[i]);
        assertEq(r, uint256(d[i]));
    }
}
