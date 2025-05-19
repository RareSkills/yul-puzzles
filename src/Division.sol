// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.13;

contract Division {

    function main(int256 x, int256 y) external pure returns (int256 result) {
        assembly {
            // your code here
            // x and y can be negative or positive
            // return x / y
            // if y == 0 revert
            if iszero(y){
                revert(0,0)
            }
            result := sdiv(x,y)
       }
    }
}
