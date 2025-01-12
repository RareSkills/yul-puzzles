// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {PopFromDynamicArray} from "../src/04j_PopFromDynamicArray.sol";

contract PopFromDynamicArrayTest is Test {
    PopFromDynamicArray public c;

    function setUp() public {
        c = new PopFromDynamicArray();
    }

    function test_PopFromDynamicArray() public {
        bytes32 s = 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e568;

        c.main();
        assertEq(c.getter().length, 5);
        assertEq(c.getter()[4], 44);
        require(
            uint256(keccak256(abi.encode(c.lastElementSlotValue(s)))) == uint256(s) - 5,
            "Popped element slot not clean!"
        );
    }
}
