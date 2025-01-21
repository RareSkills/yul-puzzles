// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {KeccakFirstCalldata} from "../src/KeccakFirstCalldata.sol";

contract KeccakFirstCalldataTest is Test {
    KeccakFirstCalldata public c;

    function setUp() public {
        c = new KeccakFirstCalldata();
    }

    function test_KeccakFirstCalldata(uint256 x, uint256 y, uint256 z) public {
        bytes32 r = c.main(x, y, z);
        assertEq(r, keccak256(abi.encode(x)));
    }
}
