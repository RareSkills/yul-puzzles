// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {WriteDynamicArrayToStorage} from "../src/04m_WriteDynamicArrayToStorage.sol";

contract WriteDynamicArrayToStorageTest is Test {
    WriteDynamicArrayToStorage public c;

    function setUp() public {
        c = new WriteDynamicArrayToStorage();
    }

    function test_WriteDynamicArrayToStorage(uint256[] calldata x, uint256 i) public {
        vm.assume(i < x.length);

        c.main(x);
        assertEq(c.writeHere(i), x[i]);
    }
}
