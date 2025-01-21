// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {CalculatorInFallback} from "../src/CalculatorInFallback.sol";

contract CalculatorInFallbackTest is Test {
    CalculatorInFallback public c;

    function setUp() public {
        c = new CalculatorInFallback();
    }

    function test_Add(uint256 x, uint256 y) public {
        vm.assume(x < type(uint256).max / 2 && y < type(uint256).max / 2);
        address(c).call(abi.encodeWithSignature("add(uint256,uint256)", x, y));
        assertEq(c.result(), (x + y));
    }

    function test_Sub(uint256 x, uint256 y) public {
        vm.assume(x > y);
        address(c).call(abi.encodeWithSignature("sub(uint256,uint256)", x, y));
        assertEq(c.result(), x - y);
    }

    function test_Mul(uint256 x, uint256 y) public {
        vm.assume(y > 0 && x <= type(uint256).max / y);
        address(c).call(abi.encodeWithSignature("mul(uint256,uint256)", x, y));
        assertEq(c.result(), x * y);
    }

    function test_Div(uint256 x, uint256 y) public {
        vm.assume(y > 0);
        address(c).call(abi.encodeWithSignature("div(uint256,uint256)", x, y));
        assertEq(c.result(), x / y);
    }
}
