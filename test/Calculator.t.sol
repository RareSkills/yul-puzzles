// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {Calculator} from "../src/Calculator.sol";

contract CalculatorTest is Test {
    Calculator public c;

    function setUp() public {
        c = new Calculator();
    }

    function test_Add(uint256 x, uint256 y) public {
        vm.assume(x < type(uint256).max / 2 && y < type(uint256).max / 2);
        uint256 r = c.add(x, y);
        assertEq(r, x + y);
    }

    function test_Sub(uint256 x, uint256 y) public {
        vm.assume(x > y);
        uint256 r = c.sub(x, y);
        assertEq(r, x - y);
    }

    function test_Mul(uint256 x, uint256 y) public {
        vm.assume(y > 0 && x <= type(uint256).max / y);
        uint256 r = c.mul(x, y);
        assertEq(r, x * y);
    }

    function test_Div(uint256 x, uint256 y) public {
        vm.assume(y > 0);
        uint256 r = c.div(x, y);
        assertEq(r, x / y);
    }
}
