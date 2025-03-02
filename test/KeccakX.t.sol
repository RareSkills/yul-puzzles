// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {KeccakX} from "../src/KeccakX.sol";

contract KeccakXTest is Test {
    KeccakX public c;

    function setUp() public {
        c = new KeccakX();
    }

    function test_KeccakX(uint256 x) public {
        bytes32 r = c.main(x);
        assertEq(r, keccak256(abi.encode(x)));
    }
}
