// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.13;

contract Calculator {
    // perform the arithmetic operations assumming they won't overflow or underflow
    // the list of math operations can be found here:
    // https://docs.soliditylang.org/en/latest/yul.html#evm-dialect

    function add(uint256 x, uint256 y) external pure returns (uint256 result) {
        assembly {
            // your code here
            // add x and y
            result:= add(x,y)

        }
    }

    function sub(uint256 x, uint256 y) external pure returns (uint256 result) {
        assembly {
            // your code here
            // subtract y from x
            result:= sub(x,y)
        }
    }

    function mul(uint256 x, uint256 y) external pure returns (uint256 result) {
        assembly {
            // your code here
            // multiply x by y
            result:= mul(x,y)
        }
    }

    function div(uint256 x, uint256 y) external pure returns (uint256 result) {
        assembly {
            // your code here
            // div x by y
            result:= div(x,y)
        }
    }
}
