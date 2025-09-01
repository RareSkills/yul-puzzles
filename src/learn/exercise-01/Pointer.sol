// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import {Test, stdError, console} from "forge-std/Test.sol";

/**
 * I didn't know what it mean to call a zero-initialized variable of internal function type.
 *
 * Sources:
 *   - https://rareskills.io/post/try-catch-solidity
 *   - https://docs.soliditylang.org/en/latest/control-structures.html
 *   - https://ethereum.stackexchange.com/questions/47009/call-a-zero-initialized-variable-of-internal-function-type
 */

contract Pointer {
    function x(uint128 a, uint128 b) internal pure returns (uint256) {
        return a + b;
    }

    function y() external pure returns (uint256) {
        function(uint128, uint128) internal pure returns (uint256) ptr;
        ptr = x;
        return ptr(1, 2);
    }

    function z() external pure returns (uint256) {
        function(uint128, uint128) internal pure returns (uint256) ptr;
        return ptr(1, 2);
    }
}

contract PointerTest is Test {
    Pointer internal p;

    bytes4 internal immutable PANIC_SELECTOR =
        bytes4(keccak256("Panic(uint256)"));

    uint256 internal constant ZERO_VAR_ERROR = 0x51;

    function setUp() public {
        p = new Pointer();
    }

    function test_call_y() external view {
        p.y();
    }

    function test_call_z() external {
        bytes memory errorData = abi.encodePacked(
            PANIC_SELECTOR,
            ZERO_VAR_ERROR
        );
        vm.expectRevert(errorData);
        p.z();
    }
}
