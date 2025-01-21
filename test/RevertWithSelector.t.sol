// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {RevertWithSelector} from "../src/RevertWithSelector.sol";

contract RevertWithSelectorTest is Test {
    RevertWithSelector public c;

    function setUp() public {
        c = new RevertWithSelector();
    }

    function test_RevertWithSelector() public {
        vm.expectRevert(RevertWithSelector.RevertData.selector);
        c.main();
    }
}
