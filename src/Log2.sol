// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.13;

contract Log2 {

    function main(uint256 x) external pure returns (uint256) {
        assembly {
            // your code here
            // return log2 of x rounded down
            // revert if x is 0
            // hint: log2 is the index of the highest bit that is set in x
            // for example:
            //   bin(1) = 0001, so log2(2) = 0
            //   bin(2) = 0010, so log2(2) = 1
            //   bin(3) = 0011, so log2(3) = 1
            //   bin(4) = 0100, so log2(4) = 2
            //   bin(5) = 0101, so log2(5) = 2
            //   bin(6) = 0110, so log2(6) = 2
            //   bin(7) = 0111, so log2(6) = 2
            //   bin(8) = 1000, so log2(6) = 3
            if iszero(x){
                revert(0,0)
            }
           
  
        }
    }
}
