// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {KeccakSecondCalldata} from "../src/KeccakSecondCalldata.sol";

contract KeccakSecondCalldataTest is Test {
    KeccakSecondCalldata public c;

    function setUp() public {
        c = new KeccakSecondCalldata();
    }

    function test_KeccakSecondCalldata(uint256 x, uint256 y, uint256 z) public {
        bytes32 r = c.main(x, y, z);
        assertEq(r, keccak256(abi.encode(y)));
    }
}
