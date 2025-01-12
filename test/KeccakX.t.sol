// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {keccakX} from "../src/02b_keccakX.sol";

contract keccakXTest is Test {
    keccakX public c;

    function setUp() public {
        c = new keccakX();
    }

    function test_keccakX(uint256 x) public {
        bytes32 r = c.main(x);
        assertEq(r, keccak256(abi.encode(x)));
    }
}
