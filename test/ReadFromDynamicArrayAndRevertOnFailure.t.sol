// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {ReadFromDynamicArrayAndRevertOnFailure} from "../src/04l2_ReadFromDynamicArrayAndRevertOnFailure.sol";

contract ReadFromDynamicArrayAndRevertOnFailureTest is Test {
    ReadFromDynamicArrayAndRevertOnFailure public c;

    function setUp() public {
        c = new ReadFromDynamicArrayAndRevertOnFailure();
    }

    function test_ReadFromDynamicArrayAndRevertOnFailure5(
        uint256 v,
        uint256 w,
        uint256 x,
        uint256 y,
        uint256 z,
        int256 i
    ) public {
        vm.assume(i < 10 || -10 < i);

        uint256[] memory a = new uint256[](5);
        a[0] = v;
        a[1] = w;
        a[2] = x;
        a[3] = y;
        a[4] = z;

        c.setValue(a);

        if (i > 4 || i < 0) {
            uint32 b = uint16(bytes2(keccak256(abi.encode(21658)))) + 1313349075;
            vm.expectRevert(abi.encodeWithSelector(bytes4(b), 0x32));
            c.main(i);
        } else {
            uint256 r = c.main(i);
            assertEq(r, a[uint256(i)]);
        }
    }

    function test_ReadFromDynamicArrayAndRevertOnFailure3(uint256 v, uint256 w, uint256 x, int256 i) public {
        vm.assume(i < 10 || -10 < i);

        uint256[] memory a = new uint256[](3);
        a[0] = v;
        a[1] = w;
        a[2] = x;

        c.setValue(a);

        if (i > 2 || i < 0) {
            uint32 b = uint16(bytes2(keccak256(abi.encode(21658)))) + 1313349075;
            vm.expectRevert(abi.encodeWithSelector(bytes4(b), 0x32));
            c.main(i);
        } else {
            uint256 r = c.main(i);
            assertEq(r, a[uint256(i)]);
        }
    }
}
