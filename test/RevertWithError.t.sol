// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {RevertWithError} from "../src/00d_RevertWithError.sol";

contract RevertWithErrorTest is Test {
    RevertWithError public c;

    function setUp() public {
        c = new RevertWithError();
    }

    function test_RevertWithError() public {
        vm.expectRevert(bytes("RevertRevert"));
        c.main();
    }
}
