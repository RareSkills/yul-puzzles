// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {RevertWithSelectorPlusArgs} from "../src/00e_RevertWithSelectorPlusArgs.sol";

contract RevertWithSelectorPlusArgsTest is Test {
    RevertWithSelectorPlusArgs public c;

    function setUp() public {
        c = new RevertWithSelectorPlusArgs();
    }

    function test_RevertWithSelectorPlusArgs(uint256 x) public {
        vm.expectRevert(abi.encodeWithSelector(RevertWithSelectorPlusArgs.RevertData.selector, x));
        c.main(x);
    }
}
